#include <iostream>
#include <string>
#include <iomanip> // 对于 std::setw 和 std::setfill
#include <sstream> // 对于 std::stringstream
#include <fstream>
#include <cmath> // 确保包含了这个头文件
#include <iomanip> // 包含此头文件以使用std::fixed和std::setprecision

#include <array>
#include <ros/ros.h>
#include <std_msgs/Float32.h>
#include "std_msgs/String.h"
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Vector3Stamped.h> 
#include <vector>
#include <serial/serial.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>

using namespace std;//
//创建一个serial对象
serial::Serial ser;

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
TrajectoryPoint origin_point, current_point,lookahead_points;
std::vector<TrajectoryPoint> ref_points ;

const double DEG_TO_RAD = M_PI / 180.0; // 度转弧度的系数
const double RAD_TO_DEG = 180.0 / M_PI ; 

double V = 0, beta = 0, r = 0, accel_x = 0, accel_y = 0, speed_R = 0, delta = 0, TxR = 0,TxR_before =0;
double Ux= 0, Uy = 0 , UWB_x = 0, UWB_y = 0;
double latitude = 0, longitude = 0 , altitude = 0 ;
double roll = 0, pitch = 0 , yaw = 0 ;
int gps_states = 0 ;

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

// 定义一个函数来计算两个经纬度点之间的距离（以米为单位）
void calculateXY(TrajectoryPoint& point) {
    double const_origin_latitude, const_origin_longitude, angle_rotation, EARTH_RADIUS;
    ros::param::get("const_origin_latitude", const_origin_latitude);
    ros::param::get("const_origin_longitude", const_origin_longitude);
    ros::param::get("angle_rotation", angle_rotation);
    ros::param::get("EARTH_RADIUS", EARTH_RADIUS);
    int UWB_Flag;
    ros::param::get("UWB_Flag", UWB_Flag);

    double rad_origin_lat = const_origin_latitude *DEG_TO_RAD;
    double rad_lat = point.latitude_data * DEG_TO_RAD;
    double rad_lon = point.longitude_data * DEG_TO_RAD;
    double rad_origin_lon = const_origin_longitude * DEG_TO_RAD;

    // 计算纬度和经度的差值
    double delta_lat = rad_lat - rad_origin_lat;
    double delta_lon = rad_lon - rad_origin_lon;

    // 计算x和y的差值
    double dx = EARTH_RADIUS * cos(rad_origin_lat) * delta_lon;
    double dy = EARTH_RADIUS * delta_lat;

    // Apply rotation matrix
    double dx_new = cos(angle_rotation) * dx - sin(angle_rotation) * dy;
    double dy_new = sin(angle_rotation) * dx + cos(angle_rotation) * dy;

    dx = dx_new;
    dy = dy_new;
    // 更新TrajectoryPoint结构体的x_ref和y_ref
    if (UWB_Flag)
    {
        
        point.x_data = UWB_x;
        point.y_data = UWB_y; 

    }
    else
    {
        point.x_data = dx;
        point.y_data = dy;
    }

}

std::vector<TrajectoryPoint> readTrajectoryPoints() {
    std::vector<TrajectoryPoint> points;
    // 定义一个std::string类型的变量来存储CSV文件路径
    std::string load_csv_file_path;
    ros::param::get("load_csv_file_path", load_csv_file_path);
    std::ifstream file(load_csv_file_path);
    std::string line;
    bool isFirstLine = true;

    while (std::getline(file, line)) {
        if (isFirstLine) {
            isFirstLine = false;
            continue; // 跳过第一行
        }
        std::stringstream lineStream(line);
        std::string cell;
        TrajectoryPoint point;
        std::getline(lineStream, cell, ',');
        point.x_data = std::stod(cell);
        std::getline(lineStream, cell, ',');
        point.y_data = std::stod(cell);
        std::getline(lineStream, cell, ',');
        point.yaw_data = std::stod(cell) ;
        std::getline(lineStream, cell, ',');
        point.Ux_data = std::stod(cell);
        std::getline(lineStream, cell, ',');
        point.Uy_data = std::stod(cell);
        std::getline(lineStream, cell, ',');
        point.r_data = std::stod(cell);

        points.push_back(point);
    }

    return points;
}

void statesCallback(const std_msgs::Float64MultiArray::ConstPtr& msg) {
    if (msg->data.size() == kStateSize) {
        // 使用枚举索引从消息中提取数据并更新预定义变量
        Ux = msg->data[Ux_Index];
        Uy = msg->data[Uy_Index];
        r = msg->data[r_Index];
        accel_x = msg->data[accel_x_Index];
        accel_y = msg->data[accel_y_Index];
        speed_R = msg->data[speed_R_Index];
        latitude = msg->data[latitude_Index];
        longitude = msg->data[longitude_Index];
        altitude = msg->data[altitude_Index];
        roll = msg->data[roll_Index];
        pitch = msg->data[pitch_Index];
        yaw = msg->data[yaw_Index];
        gps_states = msg->data[gps_states_Index];
        UWB_x = msg->data[UWB_x_Index] ;
        UWB_y = msg->data[UWB_y_Index] ;
        Ux = speed_R * 0.005655;
    } else {
    }
}

std::vector<uint8_t> construct_data(double delta_rad,double TxR_Nm,uint16_t control_model = 0x00) {
    std::vector<uint8_t> data = {0x5A, 0xA5, 0x00, 0x00, 0x00, 0x00};
    uint16_t control_mode = 0x00;
    float Const_Output_to_Torque;
    ros::param::get("Const_Output_to_Torque", Const_Output_to_Torque);
    
    float delta_deg = delta_rad * (180.0 / M_PI);
    float rear_wheel_drive_Output = TxR_Nm / Const_Output_to_Torque;
    // 添加转向角
    auto delta_bytes = reinterpret_cast<uint8_t*>(&delta_deg);
    data.insert(data.end(), delta_bytes, delta_bytes + sizeof(delta_deg));

    // 添加速度模式
    data.push_back(control_mode);

    // 添加后轮驱动力
    auto drive_force_bytes = reinterpret_cast<uint8_t*>(&rear_wheel_drive_Output);
    data.insert(data.end(), drive_force_bytes, drive_force_bytes + sizeof(rear_wheel_drive_Output));

    // 更新数据长度
    uint16_t actual_len = data.size() + 2;
    data[2] = actual_len & 0xff;
    data[3] = (actual_len >> 8) & 0xff;

    // 计算校验和
    uint16_t checksum = 0;
    for (auto byte : data) {
        checksum += byte;
    }
    data[4] = checksum & 0xFF;
    data[5] = (checksum >> 8) & 0xFF;

    // 添加尾帧
    data.push_back(0x7A);
    data.push_back(0xA7);

    return data;
}

void serial_init(const std::string& com_port, uint32_t baud_rate = 115200) {
    
    try {
        ser.setPort(com_port);
        ser.setBaudrate(baud_rate);
        serial::Timeout to = serial::Timeout::simpleTimeout(100);
        ser.setTimeout(to);
        ser.open();
    } catch (serial::IOException& e) {
        ROS_ERROR_STREAM("Unable to open port ");
        return;
    }
    if (ser.isOpen()) {
        ROS_INFO_STREAM("Serial Port initialized");
    } else {
        return;
    }
    
}

// 示例：计算转向角度的函数
double calculate_delta_pid(double r_car, double r_ref) {
    double Kp_r;
    ros::param::get("Kp_r", Kp_r);
    float delta_pid = 0;
    delta_pid = -Kp_r * (r_car - r_ref);
    return delta_pid;

}

float calculate_TxR_pid(double V_car, double V_ref) {
    // 这里应该是根据当前位置和目标位置计算速度的逻辑
    float Kp_V , Ki_V , dt , TxR_integral_min , TxR_integral_max ,TxR_min, TxR_max ;
    ros::param::get("Kp_V", Kp_V);
    ros::param::get("Ki_V", Ki_V);
    ros::param::get("dt", dt);
    ros::param::get("TxR_integral_min", TxR_integral_min);
    ros::param::get("TxR_integral_max", TxR_integral_max);
    ros::param::get("TxR_min", TxR_min);
    ros::param::get("TxR_max", TxR_max);

    static float integral_error = 0; // 累积误差
    // 计算当前误差
    float error = V_ref - V_car;
    // 更新累积误差
    integral_error += error * dt;
    // 积分误差限幅
    integral_error = std::max(TxR_integral_min, std::min(integral_error, TxR_integral_max));// 计算 PI 控制器输出
    float TxR_pi = Kp_V * error + Ki_V * integral_error;
    //给输出限幅
    TxR_pi = std::max(TxR_min, std::min(TxR_pi, TxR_max));
    return TxR_pi ; 
}
// 计算横向误差的函数 左侧为正值，右侧为负值
double calculateLateralError(const TrajectoryPoint& current_point, const TrajectoryPoint& nearest_point) {
    // 计算当前点到最近点的向量
    double dx = current_point.x_data - nearest_point.x_data;
    double dy = current_point.y_data - nearest_point.y_data;

    // 使用最近点的航向计算横向误差
    double lateral_error = -dx * std::sin(nearest_point.yaw_data) + dy * std::cos(nearest_point.yaw_data);

    return lateral_error;
}
TrajectoryPoint findLookaheadPoints(TrajectoryPoint& current_position, const std::vector<TrajectoryPoint>& ref_points) {
  
    double min_distance = std::numeric_limits<double>::max();
    int nearest_point_index = -1;
    int lookahead_length ;
    ros::param::get("lookahead_length", lookahead_length );
    
    // 计算与当前位置最近的参考点
    for (int i = 0; i < ref_points.size(); ++i) {
        double distance = sqrt(pow(ref_points[i].x_data - current_position.x_data, 2) + pow(ref_points[i].y_data - current_position.y_data, 2));
        if (distance < min_distance) {
            min_distance = distance;
            nearest_point_index = i;
        }
    }
    lookahead_length = 5 + (ref_points[nearest_point_index].Ux_data - 2) ;
    // ROS_INFO_STREAM("lookahead_length " << lookahead_length);  

    int lookahead_index = std::min( nearest_point_index+lookahead_length  , static_cast<int>(ref_points.size()) - 1);
    
    return ref_points[lookahead_index];
}
void Control_func()
{      
    double Kp_yaw , V_rate;
    ros::param::get("Kp_yaw", Kp_yaw);
    ros::param::get("V_rate", V_rate);
    int UWB_Flag;
    ros::param::get("UWB_Flag", UWB_Flag);
    current_point.latitude_data = latitude;
    current_point.longitude_data = longitude;
    current_point.yaw_data = yaw;
    current_point.Ux_data = Ux;
    current_point.Uy_data = Uy;
    current_point.r_data = r;
    calculateXY(current_point);

    lookahead_points = findLookaheadPoints(current_point, ref_points);
   
    lookahead_points.yaw_data =atan2(lookahead_points.y_data - current_point.y_data, lookahead_points.x_data - current_point.x_data);
    double e_yaw = (current_point.yaw_data-lookahead_points.yaw_data);
    // 如果r_ref大于π，减去2π来进行调整
    if (e_yaw  > M_PI) {
        e_yaw  -= 2 * M_PI;
    }
    // 如果r_ref小于-π，加上2π来进行调整
    else if (e_yaw  < -M_PI) {
        e_yaw  += 2 * M_PI;
    }
    
    double r_ref = -Kp_yaw * e_yaw;
    double V_ref = lookahead_points.Ux_data * V_rate;

    TxR = calculate_TxR_pid(Ux, V_ref ) ;
    TxR = TxR * 0.1 + TxR_before * 0.9;
    TxR_before = TxR ;
    delta  = calculate_delta_pid(r, r_ref) * (1.5/(Ux +1));

    auto data = construct_data(delta,TxR);
    if ( UWB_Flag == 1)
    {
        ser.write(data);
    }
    else
    {
        if(gps_states == 4)
        {
            ser.write(data);
        }
        else
        {
            ROS_INFO_STREAM("GPS_ERROR");  
        }
    }

    // ROS_INFO_STREAM("V: "  <<  V <<",V_ref"<<V_ref);  
    // ROS_INFO_STREAM("delta: " << delta << ", TxR: " << TxR<<"\n");
      
}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node");
	ros::NodeHandle nh;
    ros::Subscriber states_sub = nh.subscribe("states", 1000, statesCallback);
    std::string com_port = "/dev/stm32_vcp";
    ros::Rate loop_rate(500);
    ros::Time start_time = ros::Time::now();
    serial_init(com_port);

    static int count = 0; // 静态变量，用于跟踪迭代次数
    ref_points = readTrajectoryPoints();

	while(ros::ok())
	{

        // 每次循环迭代时，增加计数器
        ros::Time current_time = ros::Time::now();
        count++;
        // 当计数器达到100时，打印信息并重置计数器
        if (count >= 100) {
            ROS_INFO_STREAM("time:" << (current_time - start_time).toSec());
            ROS_INFO_STREAM("x: " << current_point.x_data << ", y: " << current_point.y_data);
            ROS_INFO_STREAM("gps_state: " << gps_states);  
            count = 0; // 重置计数器
        }

        Control_func();

		loop_rate.sleep();
		ros::spinOnce();
	}
	// 关闭串口
	ser.close();
	return 0;
}