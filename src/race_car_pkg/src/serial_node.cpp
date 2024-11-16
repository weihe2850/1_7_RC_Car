#include <iostream>
#include <string>
#include <iomanip> 
#include <sstream>
#include <fstream>
#include <cmath>
#include <iomanip> 

#include <array>
#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include "std_msgs/String.h"
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Vector3Stamped.h> 
#include <vector>
#include <serial/serial.h>
#include <nmea_msgs/Sentence.h> 
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include "in2ulv_msgs/LocalizationInfo.h"
#include <nlink_parser/LinktrackNodeframe2.h>
using namespace std;
#define rBUFFER_SIZE 1024
unsigned char r_buffer[rBUFFER_SIZE];

const double DEG_TO_RAD = M_PI / 180.0; // 度转弧度的系数
const double RAD_TO_DEG = 180.0 / M_PI ; 
float steering_angle = 0, current_data = 0, speed_RR = 0, speed_RL = 0;
double V = 0, beta = 0, r = 0, accel_x = 0, accel_y = 0, speed_R = 0, delta = 0, TxR = 0;
double Ux= 0, Uy = 0, UWB_x = 0, UWB_y = 0, ekf_x = 0, ekf_y = 0;
double latitude = 0, longitude = 0 , altitude = 0 ;
double roll = 0, pitch = 0 , yaw = 0 ;
int gps_states = 0; // 添加这一行

std::string csv_path = "/home/inin/weihe_ws/data/save_map_tiantai.csv";

// 定义状态量数组大小常量

// 使用枚举定义数组索引，提高代码可读性
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
constexpr size_t kStateSize = StateSize;

void nmeaCallback(const nmea_msgs::Sentence::ConstPtr& msg) {
    // 解析NMEA GPGGA数据
    std::string sentence = msg->sentence;
    if (sentence.find("GPGGA") != std::string::npos) {
        std::stringstream ss(sentence);
        std::string token;
        std::vector<std::string> tokens;
        while (std::getline(ss, token, ',')) {
            tokens.push_back(token);
        }
        if (tokens.size() > 6) {
            gps_states = std::stoi(tokens[6]); // 提取定位状态
        }
    }
}
// 定义回调函数
void freeAccelerationCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg)
{
    // 访问加速度的x、y、z分量
    accel_x = msg->vector.x;
    accel_y  = msg->vector.y;

}
void eulerCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg) {
    roll = msg->vector.x  * M_PI / 180.0;
    pitch = msg->vector.y  * M_PI / 180.0;
    yaw = msg->vector.z  * M_PI / 180.0;

    // 根据需要处理roll, pitch, yaw
}
void twistCallback(const geometry_msgs::TwistStamped::ConstPtr& msg)
{

    // 假设yaw和msg已经定义
    Ux = msg->twist.linear.x * std::cos(yaw) + msg->twist.linear.y * std::sin(yaw);
    Uy = -msg->twist.linear.x * std::sin(yaw) + msg->twist.linear.y * std::cos(yaw);
    r = msg->twist.angular.z;
    // 根据需要处理速度和角速度
}

void positionCallback(const geometry_msgs::Vector3Stamped::ConstPtr& msg) {
    // 处理位置信息
    latitude  = msg->vector.x;
    longitude = msg->vector.y;
    altitude  = msg->vector.z;
}
void My_Nodeframe2Callback(const nlink_parser::LinktrackNodeframe2 &msg) {
    UWB_x = msg.pos_3d[0];
    UWB_y = msg.pos_3d[1];
}
void EKF_Callback(const in2ulv_msgs::LocalizationInfoConstPtr& msg) {
    // 处理位置信息
    ekf_x = msg->position.x;
    ekf_y = msg->position.y;
    // altitude = msg->position.z;
    // // 处理姿态信息
    // roll = msg->attitude.x;
    // pitch = msg->attitude.y;
    // yaw = msg->attitude.z;

    // // 处理线速度信息
    // Ux = msg->linear_velocity.x;
    // Uy = msg->linear_velocity.y;
    // r = msg->linear_velocity.z;

    // // 处理角速度信息
    // // 根据需要处理角速度

    // // 处理加速度信息
    // accel_x = msg->linear_acceleration.x;
    // accel_y = msg->linear_acceleration.y;
}
void saveToCSV(const std::vector<std::array<double, kStateSize>>& data) 
{
    std::string save_csv_file_path;
    ros::param::get("save_csv_file_path",save_csv_file_path);
    std::ofstream file(save_csv_file_path);
    if (!file.is_open()) {
        std::cerr << "Failed to open file for writing." << std::endl;
        return;
    }

    // 写入CSV文件的第一行列标题
    file << "Ux_mps,Uy_mps,r_radps,ax_mps2,ay_mps2,speed_rpm,delta_rad,Single_Motor_TxR_Nm,latitude,longitude,altitude,roll_rad,pitch_rad,yaw_rad,gps_state,UWB_x_m,UWB_y_m,EKF_x_m,EKF_y_m\n";
    // 写入数据
    for (const auto& entry : data) {
        for (size_t i = 0; i < kStateSize; ++i) {
            file << std::fixed << std::setprecision(8) << entry[i];
            if (i < kStateSize - 1) {
                file << ",";
            }
        }
        file << "\n";
    }
}
int main(int argc, char** argv)
{

    ros::init(argc, argv, "serial_node");
    //创建句柄（虽然后面没用到这个句柄，但如果不创建，运行时进程会出错）
	ros::NodeHandle nh;
    ros::Publisher states_pub = nh.advertise<std_msgs::Float64MultiArray>("states", 1000);

    // 创建订阅者
    ros::Subscriber filter_free_accel_sub = nh.subscribe("/filter/free_acceleration", 1000, freeAccelerationCallback);
    ros::Subscriber filter_twist_sub = nh.subscribe("filter/twist", 1000, twistCallback);
    ros::Subscriber filter_positionlla_sub = nh.subscribe("/filter/positionlla", 1000, positionCallback);
    ros::Subscriber nmea_sub = nh.subscribe("/nmea", 1000, nmeaCallback);
    ros::Subscriber filter_euler_sub = nh.subscribe("/filter/euler", 1000, eulerCallback);
    ros::Subscriber sub_nodeframe2 = nh.subscribe("/nlink_linktrack_nodeframe2", 1000, My_Nodeframe2Callback);
    ros::Subscriber EKF_sub = nh.subscribe("/ULV_utm_localization_info", 1000, EKF_Callback); // 订阅新的消息

    // 发布的车辆状态
    std_msgs::Float64MultiArray states_array;
    // 使用std::array代替原生数组，提高类型安全性和便利性
    std::vector<std::array<double, kStateSize>> states_values_vector;
    std::array<double, kStateSize> states_values = {};
    //创建一个serial对象
    serial::Serial ser;
    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(100);
    //设置要打开的串口名称
    ser.setPort("/dev/stm32_vcp");
    //设置串口通信的波特率
    ser.setBaudrate(115200);
    //串口设置timeout
    ser.setTimeout(to);
    try
    {
        //打开串口
        ser.open();
    }
    catch(serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port.");
        return -1;
    }
    //判断串口是否打开成功
    if(ser.isOpen())
    {
        ROS_INFO_STREAM("Stm32 is linked.");
    }
    else
    {
        return -1;
    }
    
    ros::Rate loop_rate(50);
    ros::Time start_time = ros::Time::now();

    float Const_Output_to_Torque, Const_Gear_Ratio ,UWB_x_offset ,UWB_y_offset, save_csv_time;
    ros::param::get("Const_Output_to_Torque", Const_Output_to_Torque);
    ros::param::get("Const_Gear_Ratio", Const_Gear_Ratio);
    ros::param::get("UWB_x_offset", UWB_x_offset);
    ros::param::get("UWB_y_offset", UWB_y_offset);
    ros::param::get("save_csv_time", save_csv_time);

	while(ros::ok())
	{
        ros::Time current_time = ros::Time::now();
        static int count = 0;  // 添加一个计数器
        // 检查是否已经记录了10秒的数据
        if ((current_time - start_time).toSec()>=save_csv_time ){
            saveToCSV( states_values_vector);
            start_time = current_time;
            ROS_INFO_STREAM("save csv");
        }  
        if(ser.available() >= 88) // 确保缓冲区有足够的数据
        {
			// 读取串口数据
            size_t bytes_read = ser.read(r_buffer, 88); // 直接读取88个字节
            if(r_buffer[0] == 0x5A && r_buffer[1] == 0xA5)
            {
                // 验证帧尾
                if(r_buffer[86] == 0x7A && r_buffer[87] == 0xA7)
                {
                    // 计算校验和
                    uint16_t sum = 0;
                    for(int i = 0; i < 86; i++) // 只对前86个字节进行校验和计算
                    {
                        sum += r_buffer[i];
                    }
					sum = sum - r_buffer[4]-r_buffer[5] ;
                    uint16_t received_sum = (uint16_t)(r_buffer[4] | (r_buffer[5] << 8)); // 从数据中获取校验和
                    if(sum == received_sum)
                    {             
                        memcpy(&speed_RR, &r_buffer[62], sizeof(float));
                        memcpy(&speed_RL, &r_buffer[70], sizeof(float)); 
                        // 提取转向角浮点数 数据包总长度为88，转向角数据位于倒数第10到倒数第7字节
                        memcpy(&steering_angle, &r_buffer[78], sizeof(float)); 
                        // 提取驱动力浮点数 单个电机的电流值
                        memcpy(&current_data, &r_buffer[82], sizeof(float)); 
                        // 打印提取的值
                        speed_R = ( -1 * speed_RR + speed_RL) / Const_Gear_Ratio / 2;
                        delta = steering_angle * DEG_TO_RAD;
                        TxR  = current_data  * Const_Output_to_Torque;
                    }
                }
            }
        }
        // 更新特定索引的值
        // 更新特定索引的值，并保留两位小数
        // 直接更新特定索引的值，不保留小数
        states_values[Ux_Index] = Ux;
        states_values[Uy_Index] = Uy;
        states_values[r_Index] = r;
        states_values[accel_x_Index] = accel_x;
        states_values[accel_y_Index] = accel_y;
        states_values[speed_R_Index] = speed_R;
        states_values[delta_Index] = delta;
        states_values[TxR_Index] = TxR;
        states_values[latitude_Index] = latitude;
        states_values[longitude_Index] = longitude;
        states_values[altitude_Index] = altitude;
        states_values[roll_Index] = roll;
        states_values[pitch_Index] = pitch ;
        states_values[yaw_Index] = yaw ;
        states_values[gps_states_Index] = gps_states ;
        states_values[UWB_x_Index] = UWB_x - UWB_x_offset;
        states_values[UWB_y_Index] = UWB_y - UWB_y_offset;
        states_values[EKF_x_Index] = ekf_x - UWB_x_offset;
        states_values[EKF_y_Index] = ekf_y - UWB_y_offset;
        states_values_vector.push_back(states_values);
        
        // 发布车辆状态信息
        states_array.data.assign(states_values.begin(), states_values.end());
        states_pub.publish(states_array);
        
		loop_rate.sleep();
		ros::spinOnce();

	}
	// 关闭串口
	ser.close();
	return 0;
}