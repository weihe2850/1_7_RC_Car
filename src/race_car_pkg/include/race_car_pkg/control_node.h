#ifndef CONTROL_NODE_H
#define CONTROL_NODE_H

#include <ros/ros.h>
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <nmea_msgs/Sentence.h>
#include <nlink_parser/LinktrackNodeframe2.h>
#include <in2ulv_msgs/LocalizationInfo.h>
#include <serial/serial.h>
#include <vector>
#include <array>
#include <string>

namespace control_node
{
    constexpr size_t kStateSize = 20;
    constexpr double DEG_TO_RAD = M_PI / 180.0; // 度转弧度的系数

    enum StateIndex {
        Ux_Index = 0,
        Uy_Index,
        r_Index,
        accel_x_Index,
        accel_y_Index,
        speed_R_Index,
        delta_Index,
        TxR_Index,
        latitude_Index,
        longitude_Index,
        altitude_Index,
        roll_Index,
        pitch_Index,
        yaw_Index,
        gps_states_Index,
        UWB_x_Index,
        UWB_y_Index,
        EKF_x_Index,
        EKF_y_Index,
        StateSize
    };

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
        void statesCallback(const std_msgs::Float64MultiArray::ConstPtr& msg);
        void calculateXY(TrajectoryPoint& point);
        std::vector<TrajectoryPoint> readTrajectoryPoints();
        std::vector<uint8_t> construct_data(double delta_rad, double TxR_Nm, uint16_t control_model = 0x00);
        double calculate_delta_pid(double r_car, double r_ref);
        float calculate_TxR_pid(double V_car, double V_ref);
        double calculateLateralError(const TrajectoryPoint& current_point, const TrajectoryPoint& nearest_point);
        TrajectoryPoint findLookaheadPoints(TrajectoryPoint& current_position, const std::vector<TrajectoryPoint>& ref_points);
        virtual void Control_func() = 0; // 纯虚函数，子类实现

        ros::NodeHandle nh_;
        ros::Subscriber states_sub_;
        serial::Serial ser_;
        std::vector<TrajectoryPoint> ref_points_;
        TrajectoryPoint origin_point_, current_point_, lookahead_points_;
        std::array<double, kStateSize> states_values_;

        double V_, beta_, r_, accel_x_, accel_y_, speed_R_, delta_, TxR_;
        double Ux_, Uy_, UWB_x_, UWB_y_, ekf_x_, ekf_y_;
        double latitude_, longitude_, altitude_;
        double roll_, pitch_, yaw_;
        int gps_states_;
    };
}

#endif // CONTROL_NODE_H