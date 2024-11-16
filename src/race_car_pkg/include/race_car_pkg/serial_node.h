#ifndef SERIAL_NODE_H
#define SERIAL_NODE_H

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

namespace serial_node
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

    class SerialNode
    {
    public:
        SerialNode();
        void run();

    private:
        void nmeaCallback(const nmea_msgs::Sentence::ConstPtr& msg);
        void freeAccelerationCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg);
        void eulerCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg);
        void twistCallback(const geometry_msgs::TwistStamped::ConstPtr& msg);
        void positionCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg);
        void My_Nodeframe2Callback(const nlink_parser::LinktrackNodeframe2& msg);
        void EKF_Callback(const in2ulv_msgs::LocalizationInfoConstPtr& msg);
        void saveToCSV(const std::vector<std::array<double, kStateSize>>& data);

        ros::NodeHandle nh_;
        ros::Publisher states_pub_;
        ros::Subscriber filter_free_accel_sub_;
        ros::Subscriber filter_twist_sub_;
        ros::Subscriber filter_positionlla_sub_;
        ros::Subscriber nmea_sub_;
        ros::Subscriber filter_euler_sub_;
        ros::Subscriber sub_nodeframe2_;
        ros::Subscriber EKF_sub_;

        serial::Serial ser_;
        std::vector<std::array<double, kStateSize>> states_values_vector_;
        std::array<double, kStateSize> states_values_;

        float steering_angle_, current_data_, speed_RR_, speed_RL_;
        double V_, beta_, r_, accel_x_, accel_y_, speed_R_, delta_, TxR_;
        double Ux_, Uy_, UWB_x_, UWB_y_, ekf_x_, ekf_y_;
        double latitude_, longitude_, altitude_;
        double roll_, pitch_, yaw_;
        int gps_states_;
        std::string csv_path_;
        unsigned char r_buffer[88]; // 声明 r_buffer
    };
}

#endif // SERIAL_NODE_H