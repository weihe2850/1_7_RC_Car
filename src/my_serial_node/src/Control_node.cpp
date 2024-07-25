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
#include <std_msgs/Float32MultiArray.h>
#include <geometry_msgs/Vector3Stamped.h> 
#include <vector>
#include <serial/serial.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>

using namespace std;
//创建一个serial对象
serial::Serial ser;


struct TrajectoryPoint {
    double x_data;
    double y_data;
    double longitude_data ;
    double latitude_data ;
    double yaw_data; 
};
TrajectoryPoint origin_point, current_point,lookahead_points;
std::vector<TrajectoryPoint> ref_points ;
const float Const_Output_to_Torque             = 0.0003662109375f   ;
const float deg_2_rad                          = 0.017453292519943295769236907684886f   ;
const float Const_Gear_Ratio                   = 5.0f   ;

//设计控制模式为 力矩模式 (0x00)  速度模式(0x01)
uint16_t control_mode = 0x00 ;
//初始点的经纬度
const double EARTH_RADIUS = 6371000.0; // 地球半径，单位为米
const double DEG_TO_RAD = M_PI / 180.0; // 度转弧度的系数

double V = 0, beta = 0, r = 0, accel_x = 0, accel_y = 0, speed_R = 0, delta = 0, TxR = 0;
double Ux= 0, Uy = 0;
double latitude = 0, longitude = 0 , altitude = 0 ;
double roll = 0, pitch = 0 , yaw = 0 ;
double save_csv_time = 20.0 ;
// 定义一个std::string类型的变量来存储CSV文件路径
std::string csv_file_path = "/home/inin/weihe_ws/data/test_garden.csv";

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
    
    StateSize
};
constexpr size_t kStateSize = StateSize;

// 定义一个函数来计算两个经纬度点之间的距离（以米为单位）
void calculateXY(TrajectoryPoint& point) {
    double rad_origin_lat = origin_point.latitude_data *DEG_TO_RAD;
    double rad_lat = point.latitude_data * DEG_TO_RAD;
    double rad_lon = point.longitude_data * DEG_TO_RAD;
    double rad_origin_lon = origin_point.longitude_data * DEG_TO_RAD;

    // 计算纬度和经度的差值
    double delta_lat = rad_lat - rad_origin_lat;
    double delta_lon = rad_lon - rad_origin_lon;

    // 计算x和y的差值
    double dx = EARTH_RADIUS * cos(rad_origin_lat) * delta_lon;
    double dy = EARTH_RADIUS * delta_lat;

    // 更新TrajectoryPoint结构体的x_ref和y_ref
    point.x_data = dx;
    point.y_data = dy;
}

std::vector<TrajectoryPoint> readTrajectoryPoints(const std::string& csv_file_path) {
    const double EARTH_RADIUS = 6371000; // 地球半径，单位为米
    std::vector<TrajectoryPoint> points;
    std::ifstream file(csv_file_path);
    std::string line;
    bool isFirstPoint = true;
    while (std::getline(file, line)) {
        std::stringstream lineStream(line);
        std::string cell;
        TrajectoryPoint point;
        // 跳过前8列，直接到第9列（纬度）和第10列（经度）
        for (int i = 0; i < 8; ++i) {
            std::getline(lineStream, cell, ','); // 跳过前8列
        }
        std::getline(lineStream, cell, ',');
        point.latitude_data = std::stod(cell);
        std::getline(lineStream, cell, ',');
        point.longitude_data = std::stod(cell);

        // 继续读取直到行末尾以获取yaw信息
        while (std::getline(lineStream, cell, ',')) {
        }
        // 假设cell现在包含yaw信息
        point.yaw_data= std::stod(cell); // 将字符串转换为double并赋值给yaw_ref

        // 如果纬度不为0，则处理点
        if (point.latitude_data != 0) {
            if (isFirstPoint) {
                origin_point.latitude_data = point.latitude_data;
                origin_point.longitude_data = point.longitude_data;
                origin_point.x_data =0;
                origin_point.y_data =0;
                origin_point.yaw_data = point.yaw_data;
                isFirstPoint = false;
                point.x_data = 0;
                point.y_data = 0;
            } else {
                // 将经纬度转换为弧度
                calculateXY(point);
            }
            points.push_back(point);
        }
    }

    return points;
}

void statesCallback(const std_msgs::Float32MultiArray::ConstPtr& msg) {
    if (msg->data.size() == kStateSize) {
        // 使用枚举索引从消息中提取数据并更新预定义变量
        Ux= msg->data[Ux_Index];
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

    } else {
    }
}

std::vector<uint8_t> construct_data(double delta_rad,double TxR_Nm,uint16_t control_model = 0x00) {
    std::vector<uint8_t> data = {0x5A, 0xA5, 0x00, 0x00, 0x00, 0x00};
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
    const float Kp_r = 0.5;
    float delta_pid = 0;
    delta_pid = -Kp_r * (r_car - r_ref);
    return delta_pid;

}

// 示例：计算速度的函数
float calculate_TxR_pid(double V_car, double V_ref) {
    // 这里应该是根据当前位置和目标位置计算速度的逻辑
    const float Kp_V = 0.5;
    float TxR_pid = 0;
    TxR_pid = -Kp_V * (V_car - V_ref);
    return TxR_pid; 
}
TrajectoryPoint findLookaheadPoints(TrajectoryPoint& current_position, const std::vector<TrajectoryPoint>& ref_points) {
  
    double min_distance = std::numeric_limits<double>::max();
    int nearest_point_index = -1;

    // 计算与当前位置最近的参考点
    for (int i = 0; i < ref_points.size(); ++i) {
        double distance = sqrt(pow(ref_points[i].x_data - current_position.x_data, 2) + pow(ref_points[i].y_data - current_position.y_data, 2));
        if (distance < min_distance) {
            min_distance = distance;
            nearest_point_index = i;
        }
    }

    // 确保索引+10不会超出范围
    int lookahead_index = std::min(nearest_point_index + 10, static_cast<int>(ref_points.size()) - 1);

    return ref_points[lookahead_index];
}
void Control_func()
{      
    current_point.latitude_data = latitude;
    current_point.longitude_data = longitude;
    current_point.yaw_data = yaw;
    calculateXY(current_point);

    lookahead_points = findLookaheadPoints(current_point, ref_points);

   
    lookahead_points.yaw_data =atan2(lookahead_points.y_data - current_point.y_data, lookahead_points.x_data - current_point.x_data);
    float e_yaw = (current_point.yaw_data-lookahead_points.yaw_data);
    // 如果r_ref大于π，减去2π来进行调整
    if (e_yaw  > M_PI) {
        e_yaw  -= 2 * M_PI;
    }
    // 如果r_ref小于-π，加上2π来进行调整
    else if (e_yaw  < -M_PI) {
        e_yaw  += 2 * M_PI;
    }
    float Kp_yaw = 1;
    float r_ref = -Kp_yaw * e_yaw;
    // float r_ref = 0.3;
    float V_ref = 0.3;
    delta  = calculate_delta_pid(r, r_ref) ;
    TxR = calculate_TxR_pid(V, V_ref) ;
    auto data = construct_data(delta,TxR);
    ser.write(data);


}
int main(int argc, char** argv)
{

    ros::init(argc, argv, "Control_node");
	ros::NodeHandle nh;
    ros::Subscriber states_sub = nh.subscribe("states", 1000, statesCallback);
    std::string com_port = "/dev/ttyACM0";

    ros::Rate loop_rate(500);
    ros::Time start_time = ros::Time::now();

    serial_init(com_port);
    // 假设这段代码位于某个循环中
    static int count = 0; // 静态变量，用于跟踪迭代次数

    ref_points = readTrajectoryPoints(csv_file_path);

    for (const auto& point : ref_points) {
        // ROS_INFO_STREAM("Latitude: " << std::fixed << std::setprecision(7) << point.latitude_ref << ", Longitude: " << point.longitude_ref);
        ROS_INFO_STREAM("x: " << std::fixed << std::setprecision(7) << point.x_data << ", y: " << point.y_data);
    }

	while(ros::ok())
	{

        // 每次循环迭代时，增加计数器
        ros::Time current_time = ros::Time::now();
        count++;
        // 当计数器达到100时，打印信息并重置计数器
        if (count >= 100) {
            ROS_INFO_STREAM("time:" << (current_time - start_time).toSec());
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