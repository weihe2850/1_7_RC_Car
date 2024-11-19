#include "race_car_pkg/serial_node.h"
#include "race_car_pkg/CarStates.h"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace serial_node
{
    SerialNode::SerialNode()
        : Ux_(0), Uy_(0), r_(0), accel_x_(0), accel_y_(0), speed_R_(0), delta_(0), Single_Motor_TxR_(0),
          latitude_(0), longitude_(0), altitude_(0),
          roll_(0), pitch_(0), yaw_(0), gps_states_(0),
          UWB_x_(0), UWB_y_(0), ekf_x_(0), ekf_y_(0),

          is_csv_initialized_(false),
          ekf_timeout_(1.0), // 设置 EKF 数据的超时时间为 1 秒
          UWB_Flag_(false)        // 初始化 UWB_Flag
    {
        ekf_attitude_.x = 0.0;
        ekf_attitude_.y = 0.0;
        ekf_attitude_.z = 0.0;

        ekf_linear_velocity_.x = 0.0;
        ekf_linear_velocity_.y = 0.0;
        ekf_linear_velocity_.z = 0.0;
        ros::param::get("save_csv_file_path", csv_path_);
        ros::param::get("UWB_Flag", UWB_Flag_); 
        states_pub_ = nh_.advertise<race_car_pkg::CarStates>("CarStates", 1000);
        filter_free_accel_sub_ = nh_.subscribe("/filter/free_acceleration", 1000, &SerialNode::freeAccelerationCallback, this);
        filter_twist_sub_ = nh_.subscribe("filter/twist", 1000, &SerialNode::twistCallback, this);
        filter_positionlla_sub_ = nh_.subscribe("/filter/positionlla", 1000, &SerialNode::positionCallback, this);
        nmea_sub_ = nh_.subscribe("/nmea", 1000, &SerialNode::nmeaCallback, this);
        filter_euler_sub_ = nh_.subscribe("/filter/euler", 1000, &SerialNode::eulerCallback, this);
        sub_nodeframe2_ = nh_.subscribe("/nlink_linktrack_nodeframe2", 1000, &SerialNode::My_Nodeframe2Callback, this);
        EKF_sub_ = nh_.subscribe("/ULV_utm_localization_info", 1000, &SerialNode::EKFCallback, this);

        serial::Timeout to = serial::Timeout::simpleTimeout(100);
        ser_.setPort("/dev/stm32_vcp");
        ser_.setBaudrate(115200);
        ser_.setTimeout(to);
        try
        {
            ser_.open();
        }
        catch (serial::IOException& e)
        {
            ROS_ERROR_STREAM("Unable to open port.");
            throw;
        }
        if (ser_.isOpen())
        {
            ROS_INFO_STREAM("Stm32 is linked.");
        }
        else
        {
            throw std::runtime_error("Failed to open serial port");
        }

        last_ekf_time_ = ros::Time(0); // 初始化 EKF 数据时间为 0
    }

    void SerialNode::nmeaCallback(const nmea_msgs::Sentence::ConstPtr& msg)
    {
        std::string sentence = msg->sentence;
        if (sentence.find("GPGGA") != std::string::npos)
        {
            std::stringstream ss(sentence);
            std::string token;
            std::vector<std::string> tokens;
            while (std::getline(ss, token, ','))
            {
                tokens.push_back(token);
            }
            if (tokens.size() > 6)
            {
                gps_states_ = std::stoi(tokens[6]);
            }
        }
    }

    void SerialNode::freeAccelerationCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg)
    {
        accel_x_ = msg->vector.x;
        accel_y_ = msg->vector.y;
    }

    void SerialNode::eulerCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg)
    {
        roll_ = msg->vector.x * M_PI / 180.0;
        pitch_ = msg->vector.y * M_PI / 180.0;
        yaw_ = msg->vector.z * M_PI / 180.0;
    }

    void SerialNode::twistCallback(const geometry_msgs::TwistStamped::ConstPtr& msg)
    {
        Ux_ = msg->twist.linear.x * std::cos(yaw_) + msg->twist.linear.y * std::sin(yaw_);
        Uy_ = -msg->twist.linear.x * std::sin(yaw_) + msg->twist.linear.y * std::cos(yaw_);
        r_ = msg->twist.angular.z;
    }

    void SerialNode::positionCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg)
    {
        latitude_ = msg->vector.x;
        longitude_ = msg->vector.y;
        altitude_ = msg->vector.z;
    }

    void SerialNode::My_Nodeframe2Callback(const nlink_parser::LinktrackNodeframe2& msg)
    {
        UWB_x_ = msg.pos_3d[0];
        UWB_y_ = msg.pos_3d[1];
    }
    void SerialNode::EKFCallback(const in2ulv_msgs::LocalizationInfoConstPtr& msg)
    {
        ekf_x_ = msg->position.x;
        ekf_y_ = msg->position.y;
        ekf_attitude_ = msg->attitude;
        ekf_linear_velocity_ = msg->linear_velocity;

        last_ekf_time_ = ros::Time::now(); // 更新 EKF 数据的接收时间
        // ROS_INFO_STREAM("EKFCallback called: ekf_x_ = " << ekf_x_ << ", ekf_y_ = " << ekf_y_);
    }


    bool SerialNode::useEKF()
    {
        // 判断是否有最近的 EKF 数据，并且未超时，同时 UWB_Flag_ 为1
        ros::Time current_time = ros::Time::now();
        bool is_ekf_fresh = (current_time - last_ekf_time_).toSec() <= ekf_timeout_;
        bool is_flag_set = (UWB_Flag_);

        if (is_ekf_fresh && is_flag_set)
        {
            // ROS_INFO_STREAM("Using EKF data.");
            return true;
        }
        else
        {
            // ROS_WARN_STREAM("Not using EKF data. EKF fresh ");
            return false;
        }
    }

    void SerialNode::saveToCSV(const std::vector<race_car_pkg::CarStates>& data)
    {
        std::ofstream file;
        if (!is_csv_initialized_) {
            // 第一次写入时清空文件并写入表头
            file.open(csv_path_, std::ios::out | std::ios::trunc);
            if (!file.is_open())
            {
                std::cerr << "Failed to open file for writing." << std::endl;
                return;
            }
            file << "Ux_mps,Uy_mps,r_radps,ax_mps2,ay_mps2,speed_rpm,delta_rad,Single_Motor_TxR_Nm,latitude,longitude,altitude,roll_rad,pitch_rad,yaw_rad,gps_state,UWB_x_m,UWB_y_m,EKF_x_m,EKF_y_m\n";
            is_csv_initialized_ = true;
        }
        else {
            // 之后的写入以追加模式进行
            file.open(csv_path_, std::ios::app);
            if (!file.is_open())
            {
                std::cerr << "Failed to open file for writing." << std::endl;
                return;
            }
        }

        for (const auto& entry : data)
        {
            file << std::fixed << std::setprecision(8)
                << entry.Ux_mps << ","
                << entry.Uy_mps << ","
                << entry.r_radps << ","
                << entry.ax_mps2 << ","
                << entry.ay_mps2 << ","
                << entry.speed_rpm << ","
                << entry.delta_rad << ","
                << entry.Single_Motor_TxR_Nm << ","
                << entry.latitude << ","
                << entry.longitude << ","
                << entry.altitude << ","
                << entry.roll_rad << ","
                << entry.pitch_rad << ","
                << entry.yaw_rad << ","
                << entry.gps_state << ","
                << entry.UWB_x_m << ","
                << entry.UWB_y_m << ","
                << entry.EKF_x_m << ","
                << entry.EKF_y_m << "\n";
        }

        // 清空数据向量
        states_values_vector_.clear();
    }

    void SerialNode::run()
    {
        ros::Rate loop_rate(50);
        ros::Time start_time = ros::Time::now();

        float Const_Current_data_to_Torque, Const_Gear_Ratio, UWB_x_offset, UWB_y_offset, save_csv_time;
        ros::param::get("Const_Current_data_to_Torque", Const_Current_data_to_Torque);
        ros::param::get("Const_Gear_Ratio", Const_Gear_Ratio);
        ros::param::get("UWB_x_offset", UWB_x_offset);
        ros::param::get("UWB_y_offset", UWB_y_offset);
        ros::param::get("save_csv_time", save_csv_time);
        
        // 等待 EKF_x_m 和 EKF_y_m 不同时为 0
        ROS_WARN_STREAM("Waiting for valid EKF data...");
        while (ros::ok() && (ekf_x_ == 0.0 && ekf_y_ == 0.0))
        {
            ros::spinOnce();
            loop_rate.sleep();
        }
        ROS_WARN_STREAM("Valid EKF data received. Ready to run");

        while (ros::ok())
        {
            ros::Time current_time = ros::Time::now();
            if ((current_time - start_time).toSec() >= save_csv_time)
            {
                saveToCSV(states_values_vector_);
                start_time = current_time;
                ROS_INFO_STREAM("save csv");
            }
            if (ser_.available() >= 88)
            {
                size_t bytes_read = ser_.read(r_buffer, 88);
                if (r_buffer[0] == 0x5A && r_buffer[1] == 0xA5)
                {
                    if (r_buffer[86] == 0x7A && r_buffer[87] == 0xA7)
                    {
                        uint16_t sum = 0;
                        for (int i = 0; i < 86; i++)
                        {
                            sum += r_buffer[i];
                        }
                        sum = sum - r_buffer[4] - r_buffer[5];
                        uint16_t received_sum = (uint16_t)(r_buffer[4] | (r_buffer[5] << 8));
                        if (sum == received_sum)
                        {
                            memcpy(&speed_RR_, &r_buffer[62], sizeof(float));
                            memcpy(&speed_RL_, &r_buffer[70], sizeof(float));
                            memcpy(&steering_angle_, &r_buffer[78], sizeof(float));
                            memcpy(&current_data_, &r_buffer[82], sizeof(float));
                            speed_R_ = (-1 * speed_RR_ + speed_RL_) / Const_Gear_Ratio / 2;
                            delta_ = steering_angle_ * DEG_TO_RAD;
                            Single_Motor_TxR_ = current_data_ * Const_Current_data_to_Torque;
                        }
                    }
                }
            }

            race_car_pkg::CarStates car_states;
            car_states.Ux_mps = Ux_;
            car_states.Uy_mps = Uy_;
            car_states.r_radps = r_;
            car_states.ax_mps2 = accel_x_;
            car_states.ay_mps2 = accel_y_;
            car_states.speed_rpm = speed_R_;
            car_states.delta_rad = delta_;
            car_states.Single_Motor_TxR_Nm = Single_Motor_TxR_;
            car_states.latitude = latitude_;
            car_states.longitude = longitude_;
            car_states.altitude = altitude_;
            car_states.roll_rad = roll_;
            car_states.pitch_rad = pitch_;
            car_states.yaw_rad = yaw_;
            car_states.gps_state = gps_states_;
            car_states.UWB_x_m = UWB_x_ - UWB_x_offset;
            car_states.UWB_y_m = UWB_y_ - UWB_y_offset;
            car_states.EKF_x_m = ekf_x_ - UWB_x_offset;
            car_states.EKF_y_m = ekf_y_ - UWB_y_offset;

            // 判断是否使用 EKF 数据
            if (useEKF())
            {
                car_states.Ux_mps = ekf_linear_velocity_.x;
                car_states.Uy_mps = ekf_linear_velocity_.y;
                car_states.EKF_x_m = ekf_x_ - UWB_x_offset;
                car_states.EKF_y_m = ekf_y_ - UWB_y_offset;

                car_states.roll_rad = ekf_attitude_.x;
                car_states.pitch_rad = ekf_attitude_.y;
                car_states.yaw_rad = ekf_attitude_.z;
            }
            else
            {
                // 使用 twistCallback 的数据
                car_states.EKF_x_m = 0.0;
                car_states.EKF_y_m = 0.0;
            }

            states_values_vector_.push_back(car_states);
            states_pub_.publish(car_states);

            loop_rate.sleep();
            ros::spinOnce();
        }
        ser_.close();
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "serial_node");
    serial_node::SerialNode node;
    node.run();
    return 0;
}