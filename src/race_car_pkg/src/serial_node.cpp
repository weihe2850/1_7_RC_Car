#include "race_car_pkg/serial_node.h"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace serial_node
{
    SerialNode::SerialNode()
        : steering_angle_(0), current_data_(0), speed_RR_(0), speed_RL_(0),
          V_(0), beta_(0), r_(0), accel_x_(0), accel_y_(0), speed_R_(0), delta_(0), TxR_(0),
          Ux_(0), Uy_(0), UWB_x_(0), UWB_y_(0), ekf_x_(0), ekf_y_(0),
          latitude_(0), longitude_(0), altitude_(0),
          roll_(0), pitch_(0), yaw_(0), gps_states_(0)
    {
        ros::param::get("save_csv_file_path", csv_path_);
        states_pub_ = nh_.advertise<std_msgs::Float64MultiArray>("states", 1000);
        filter_free_accel_sub_ = nh_.subscribe("/filter/free_acceleration", 1000, &SerialNode::freeAccelerationCallback, this);
        filter_twist_sub_ = nh_.subscribe("filter/twist", 1000, &SerialNode::twistCallback, this);
        filter_positionlla_sub_ = nh_.subscribe("/filter/positionlla", 1000, &SerialNode::positionCallback, this);
        nmea_sub_ = nh_.subscribe("/nmea", 1000, &SerialNode::nmeaCallback, this);
        filter_euler_sub_ = nh_.subscribe("/filter/euler", 1000, &SerialNode::eulerCallback, this);
        sub_nodeframe2_ = nh_.subscribe("/nlink_linktrack_nodeframe2", 1000, &SerialNode::My_Nodeframe2Callback, this);
        EKF_sub_ = nh_.subscribe("/ULV_utm_localization_info", 1000, &SerialNode::EKF_Callback, this);

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

    void SerialNode::EKF_Callback(const in2ulv_msgs::LocalizationInfoConstPtr& msg)
    {
        ekf_x_ = msg->position.x;
        ekf_y_ = msg->position.y;
    }

    void SerialNode::saveToCSV(const std::vector<std::array<double, kStateSize>>& data)
    {
        std::ofstream file(csv_path_);
        if (!file.is_open())
        {
            std::cerr << "Failed to open file for writing." << std::endl;
            return;
        }

        file << "Ux_mps,Uy_mps,r_radps,ax_mps2,ay_mps2,speed_rpm,delta_rad,Single_Motor_TxR_Nm,latitude,longitude,altitude,roll_rad,pitch_rad,yaw_rad,gps_state,UWB_x_m,UWB_y_m,EKF_x_m,EKF_y_m\n";
        for (const auto& entry : data)
        {
            for (size_t i = 0; i < kStateSize; ++i)
            {
                file << std::fixed << std::setprecision(8) << entry[i];
                if (i < kStateSize - 1)
                {
                    file << ",";
                }
            }
            file << "\n";
        }
    }

    void SerialNode::run()
    {
        ros::Rate loop_rate(50);
        ros::Time start_time = ros::Time::now();

        float Const_Output_to_Torque, Const_Gear_Ratio, UWB_x_offset, UWB_y_offset, save_csv_time;
        ros::param::get("Const_Output_to_Torque", Const_Output_to_Torque);
        ros::param::get("Const_Gear_Ratio", Const_Gear_Ratio);
        ros::param::get("UWB_x_offset", UWB_x_offset);
        ros::param::get("UWB_y_offset", UWB_y_offset);
        ros::param::get("save_csv_time", save_csv_time);

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
                            TxR_ = current_data_ * Const_Output_to_Torque;
                        }
                    }
                }
            }

            states_values_[Ux_Index] = Ux_;
            states_values_[Uy_Index] = Uy_;
            states_values_[r_Index] = r_;
            states_values_[accel_x_Index] = accel_x_;
            states_values_[accel_y_Index] = accel_y_;
            states_values_[speed_R_Index] = speed_R_;
            states_values_[delta_Index] = delta_;
            states_values_[TxR_Index] = TxR_;
            states_values_[latitude_Index] = latitude_;
            states_values_[longitude_Index] = longitude_;
            states_values_[altitude_Index] = altitude_;
            states_values_[roll_Index] = roll_;
            states_values_[pitch_Index] = pitch_;
            states_values_[yaw_Index] = yaw_;
            states_values_[gps_states_Index] = gps_states_;
            states_values_[UWB_x_Index] = UWB_x_ - UWB_x_offset;
            states_values_[UWB_y_Index] = UWB_y_ - UWB_y_offset;
            states_values_[EKF_x_Index] = ekf_x_ - UWB_x_offset;
            states_values_[EKF_y_Index] = ekf_y_ - UWB_y_offset;
            states_values_vector_.push_back(states_values_);

            std_msgs::Float64MultiArray states_array;
            states_array.data.assign(states_values_.begin(), states_values_.end());
            states_pub_.publish(states_array);

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