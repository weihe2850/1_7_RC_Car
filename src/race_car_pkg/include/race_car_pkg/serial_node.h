#ifndef SERIAL_NODE_H
#define SERIAL_NODE_H

#include <ros/ros.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <nmea_msgs/Sentence.h>
#include <nlink_parser/LinktrackNodeframe2.h>
#include <in2ulv_msgs/LocalizationInfo.h>
#include <serial/serial.h>
#include <vector>
#include <string>
#include "race_car_pkg/CarStates.h"

namespace serial_node
{
    constexpr double DEG_TO_RAD = M_PI / 180.0; // Degree to radian conversion factor

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
        void EKFCallback(const in2ulv_msgs::LocalizationInfoConstPtr& msg);
        void saveToCSV(const std::vector<race_car_pkg::CarStates>& data);
        
        bool useEKF();
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
        std::vector<race_car_pkg::CarStates> states_values_vector_;

        float steering_angle_, current_data_, speed_RR_, speed_RL_;
        double V_, beta_, r_, accel_x_, accel_y_, speed_R_, delta_, Single_Motor_TxR_;
        double Ux_, Uy_, UWB_x_, UWB_y_, ekf_x_, ekf_y_;
        
        geometry_msgs::Vector3 ekf_attitude_;
        geometry_msgs::Vector3 ekf_linear_velocity_;

        bool is_csv_initialized_; 

        double latitude_, longitude_, altitude_;
        double roll_, pitch_, yaw_;
        int gps_states_;
        
        ros::Time last_ekf_time_;  // 记录最后一次接收 EKF 数据的时间
        double ekf_timeout_;       // EKF 数据的超时时间（秒）
        bool UWB_Flag_;             // UWB_Flag 参数
        std::string csv_path_;
        unsigned char r_buffer[88]; // Declare r_buffer
    };
}

#endif // SERIAL_NODE_H