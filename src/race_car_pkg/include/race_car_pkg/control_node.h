#ifndef CONTROL_NODE_H
#define CONTROL_NODE_H

#include <ros/ros.h>

#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <nmea_msgs/Sentence.h>
#include <nlink_parser/LinktrackNodeframe2.h>
#include <in2ulv_msgs/LocalizationInfo.h>
#include "race_car_pkg/CarStates.h"

#include <serial/serial.h>
#include <vector>
#include <string>

namespace control_node
{
    constexpr double DEG_TO_RAD = M_PI / 180.0; // Degree to radian conversion factor

    struct TrajectoryPoint {
        double x_data = 0.0;
        double y_data = 0.0;
        double longitude_data = 0.0;
        double latitude_data = 0.0;
        double yaw_data = 0.0;
        double Ux_data = 0.0;
        double Uy_data = 0.0;
        double r_data = 0.0;
    };

    class ControlNode
    {
    public:
        ControlNode();
        void run();
        void serial_init(const std::string& com_port, uint32_t baud_rate = 115200);

    protected:
        void statesCallback(const race_car_pkg::CarStates::ConstPtr& msg);
        void calculateXY(TrajectoryPoint& point);
        std::vector<TrajectoryPoint> readTrajectoryPoints();
        std::vector<uint8_t> construct_data(double delta_rad, double TxR_Nm, uint16_t control_model = 0x00);
        float calculate_delta_pid(float r_car, float r_ref);
        float calculate_TxR_pid(float V_car, float V_ref);
        double calculateLateralError(const TrajectoryPoint& current_point, const TrajectoryPoint& nearest_point);
        TrajectoryPoint findLookaheadPoints(TrajectoryPoint& current_position, const std::vector<TrajectoryPoint>& ref_points);
        virtual void Control_func() = 0; 

        ros::NodeHandle nh_;
        ros::Subscriber states_sub_;
        serial::Serial ser_;
        std::vector<TrajectoryPoint> ref_points_;
        TrajectoryPoint origin_point_, current_point_, lookahead_points_;

        double V_, beta_, r_, accel_x_, accel_y_, speed_R_, delta_, Single_Motor_TxR_;
        double Ux_, Uy_, UWB_x_, UWB_y_, ekf_x_, ekf_y_;
        double latitude_, longitude_, altitude_;
        double roll_, pitch_, yaw_;
        
        int gps_states_;
        bool UWB_Flag_; 
    };
}

#endif // CONTROL_NODE_H