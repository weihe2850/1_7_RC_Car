#include "race_car_pkg/control_node.h"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    ControlNode::ControlNode()
        : V_(0), beta_(0), r_(0), accel_x_(0), accel_y_(0), speed_R_(0), delta_(0), Single_Motor_TxR_(0),
          Ux_(0), Uy_(0), UWB_x_(0), UWB_y_(0), ekf_x_(0), ekf_y_(0),
          latitude_(0), longitude_(0), altitude_(0),
          roll_(0), pitch_(0), yaw_(0), gps_states_(0),
          UWB_Flag_(false) // 默认值
    {
        ros::param::get("UWB_Flag", UWB_Flag_);
        states_sub_ = nh_.subscribe("/CarStates", 1000, &ControlNode::statesCallback, this);
        serial_init("/dev/stm32_vcp", 115200);
    }

    void ControlNode::statesCallback(const race_car_pkg::CarStates::ConstPtr& msg)
    {
        Ux_ = msg->Ux_mps;
        Uy_ = msg->Uy_mps;
        r_ = msg->r_radps;
        accel_x_ = msg->ax_mps2;
        accel_y_ = msg->ay_mps2;
        speed_R_ = msg->speed_rpm;
        latitude_ = msg->latitude;
        longitude_ = msg->longitude;
        altitude_ = msg->altitude;
        roll_ = msg->roll_rad;
        pitch_ = msg->pitch_rad;
        yaw_ = msg->yaw_rad;
        gps_states_ = msg->gps_state;
        UWB_x_ = msg->UWB_x_m;
        UWB_y_ = msg->UWB_y_m;
    }

    void ControlNode::calculateXY(TrajectoryPoint& point)
    {
        double const_origin_latitude, const_origin_longitude, angle_rotation, EARTH_RADIUS;
        ros::param::get("const_origin_latitude", const_origin_latitude);
        ros::param::get("const_origin_longitude", const_origin_longitude);
        ros::param::get("angle_rotation", angle_rotation);
        ros::param::get("EARTH_RADIUS", EARTH_RADIUS);

        double rad_origin_lat = const_origin_latitude * DEG_TO_RAD;
        double rad_lat = point.latitude_data * DEG_TO_RAD;
        double rad_lon = point.longitude_data * DEG_TO_RAD;
        double rad_origin_lon = const_origin_longitude * DEG_TO_RAD;

        double delta_lat = rad_lat - rad_origin_lat;
        double delta_lon = rad_lon - rad_origin_lon;

        double dx = EARTH_RADIUS * cos(rad_origin_lat) * delta_lon;
        double dy = EARTH_RADIUS * delta_lat;

        double dx_new = cos(angle_rotation) * dx - sin(angle_rotation) * dy;
        double dy_new = sin(angle_rotation) * dx + cos(angle_rotation) * dy;

        dx = dx_new;
        dy = dy_new;

        if (UWB_Flag_)
        {
            point.x_data = UWB_x_;
            point.y_data = UWB_y_;
        }
        else
        {
            point.x_data = dx;
            point.y_data = dy;
        }
    }

    std::vector<TrajectoryPoint> ControlNode::readTrajectoryPoints()
    {
        std::vector<TrajectoryPoint> points;
        std::string load_csv_file_path;
        ros::param::get("load_csv_file_path", load_csv_file_path);
        std::ifstream file(load_csv_file_path);
        std::string line;

        if (!file.is_open()) {
            ROS_ERROR_STREAM("Failed to open file: " << load_csv_file_path);
            return points;
        }

        // 读取第一行，获取列名
        std::getline(file, line);
        std::stringstream headerStream(line);
        std::vector<std::string> columnNames;
        std::string columnName;
        while (std::getline(headerStream, columnName, ',')) {
            columnNames.push_back(columnName);
        }

        // 定义列索引
        int xIndex = -1, yIndex = -1, yawIndex = -1, UxIndex = -1, UyIndex = -1, rIndex = -1;

        // 获取每个列名的索引
        for (size_t i = 0; i < columnNames.size(); ++i) {
            if (columnNames[i] == "EKF_x_m") xIndex = i;
            else if (columnNames[i] == "EKF_y_m") yIndex = i;
            else if (columnNames[i] == "yaw_rad") yawIndex = i;
            else if (columnNames[i] == "Ux_mps") UxIndex = i;
            else if (columnNames[i] == "Uy_mps") UyIndex = i;
            else if (columnNames[i] == "r_radps") rIndex = i;
        }
        // // 获取每个列名的索引
        // for (size_t i = 0; i < columnNames.size(); ++i) {
        //     if (columnNames[i] == "x_m") xIndex = i;
        //     else if (columnNames[i] == "y_m") yIndex = i;
        //     else if (columnNames[i] == "phi_rad") yawIndex = i;
        //     else if (columnNames[i] == "Ux_mps") UxIndex = i;
        //     else if (columnNames[i] == "Uy_mps") UyIndex = i;
        //     else if (columnNames[i] == "r_radps") rIndex = i;
        // }

        // 检查是否所有列名都找到了
        if (xIndex == -1 || yIndex == -1 || yawIndex == -1 || UxIndex == -1 || UyIndex == -1 || rIndex == -1) {
            ROS_ERROR_STREAM("Missing required columns in CSV file");
            return points;
        }

        // 读取数据行
        while (std::getline(file, line)) {
            std::stringstream lineStream(line);
            std::string cell;
            TrajectoryPoint point;
            std::vector<std::string> cells;

            while (std::getline(lineStream, cell, ',')) {
                cells.push_back(cell);
            }

            // 根据索引解析数据
            if (cells.size() > xIndex) point.x_data = std::stod(cells[xIndex]);
            if (cells.size() > yIndex) point.y_data = std::stod(cells[yIndex]);
            if (cells.size() > yawIndex) point.yaw_data = std::stod(cells[yawIndex]);
            if (cells.size() > UxIndex) point.Ux_data = std::stod(cells[UxIndex]);
            if (cells.size() > UyIndex) point.Uy_data = std::stod(cells[UyIndex]);
            if (cells.size() > rIndex) point.r_data = std::stod(cells[rIndex]);
            
            if (point.x_data == 0.0 && point.y_data == 0.0) {
                continue;
            }
            points.push_back(point);
        }

        return points;
    }

    std::vector<uint8_t> ControlNode::construct_data(double delta_rad, double TxR_Nm, uint16_t control_model)
    {
        std::vector<uint8_t> data = {0x5A, 0xA5, 0x00, 0x00, 0x00, 0x00};
        uint16_t control_mode = 0x00;
        float Const_Current_data_to_Torque;
        ros::param::get("Const_Current_data_to_Torque", Const_Current_data_to_Torque);

        float delta_deg = delta_rad * (180.0 / M_PI);
        float rear_wheel_drive_Output = TxR_Nm / Const_Current_data_to_Torque;

        auto delta_bytes = reinterpret_cast<uint8_t*>(&delta_deg);
        data.insert(data.end(), delta_bytes, delta_bytes + sizeof(delta_deg));

        data.push_back(control_mode);

        auto drive_force_bytes = reinterpret_cast<uint8_t*>(&rear_wheel_drive_Output);
        data.insert(data.end(), drive_force_bytes, drive_force_bytes + sizeof(rear_wheel_drive_Output));

        uint16_t actual_len = data.size() + 2;
        data[2] = actual_len & 0xff;
        data[3] = (actual_len >> 8) & 0xff;

        uint16_t checksum = 0;
        for (auto byte : data) {
            checksum += byte;
        }
        data[4] = checksum & 0xFF;
        data[5] = (checksum >> 8) & 0xFF;

        data.push_back(0x7A);
        data.push_back(0xA7);

        return data;
    }

    float ControlNode::calculate_delta_pid(float r_car, float r_ref)
    {
        float Kp_r,delta_max;
        ros::param::get("Kp_r", Kp_r);
        ros::param::get("delta_max", delta_max);
        float delta_pid = 0;
        delta_pid = -Kp_r * (r_car - r_ref);
        delta_pid = std::max(-delta_max, std::min(delta_pid, delta_max));
        return delta_pid;
    }

    float ControlNode::calculate_TxR_pid(float V_car, float V_ref)
    {
        float Kp_V, Ki_V, dt, TxR_integral_min, TxR_integral_max, TxR_min, TxR_max;
        ros::param::get("Kp_V", Kp_V);
        ros::param::get("Ki_V", Ki_V);
        ros::param::get("dt", dt);
        ros::param::get("TxR_integral_min", TxR_integral_min);
        ros::param::get("TxR_integral_max", TxR_integral_max);
        ros::param::get("TxR_min", TxR_min);
        ros::param::get("TxR_max", TxR_max);

        static float integral_error = 0;
        float error = V_ref - V_car;
        integral_error += error * dt;
        integral_error = std::max(TxR_integral_min, std::min(integral_error, TxR_integral_max));
        float TxR_pi = Kp_V * error + Ki_V * integral_error;
        TxR_pi = std::max(TxR_min, std::min(TxR_pi, TxR_max));
        return TxR_pi;
    }

    double ControlNode::calculateLateralError(const TrajectoryPoint& current_point, const TrajectoryPoint& nearest_point)
    {
        double dx = current_point.x_data - nearest_point.x_data;
        double dy = current_point.y_data - nearest_point.y_data;
        double lateral_error = -dx * std::sin(nearest_point.yaw_data) + dy * std::cos(nearest_point.yaw_data);
        return lateral_error;
    }

    TrajectoryPoint ControlNode::findLookaheadPoints(TrajectoryPoint& current_position, const std::vector<TrajectoryPoint>& ref_points)
    {
        double min_distance = std::numeric_limits<double>::max();
        int nearest_point_index = -1;
        int lookahead_length;
        ros::param::get("lookahead_length", lookahead_length);

        for (int i = 0; i < ref_points.size(); ++i) {
            double distance = sqrt(pow(ref_points[i].x_data - current_position.x_data, 2) + pow(ref_points[i].y_data - current_position.y_data, 2));
            if (distance < min_distance) {
                min_distance = distance;
                nearest_point_index = i;
            }
        }
        int lookahead_index = std::min(nearest_point_index + lookahead_length, static_cast<int>(ref_points.size()) - 1);
        // 添加调试信息
        // ROS_INFO_STREAM("Current Position: x = " << current_position.x_data << ", y = " << current_position.y_data);
        // ROS_INFO_STREAM("Nearest Point Index: " << nearest_point_index << ", x = " << ref_points[nearest_point_index].x_data << ", y = " << ref_points[nearest_point_index].y_data);
        // ROS_INFO_STREAM("Lookahead Point Index: " << lookahead_index << ", x = " << ref_points[lookahead_index].x_data << ", y = " << ref_points[lookahead_index].y_data);

        return ref_points[lookahead_index];
    }

    void ControlNode::serial_init(const std::string& com_port, uint32_t baud_rate)
    {
        try {
            ser_.setPort(com_port);
            ser_.setBaudrate(baud_rate);
            serial::Timeout to = serial::Timeout::simpleTimeout(100);
            ser_.setTimeout(to);
            ser_.open();
        } catch (serial::IOException& e) {
            ROS_ERROR_STREAM("Unable to open port ");
            return;
        }
        if (ser_.isOpen()) {
            ROS_INFO_STREAM("Serial Port initialized");
        } else {
            return;
        }
    }

    void ControlNode::run()
    {
        ros::Rate loop_rate(50);
        ros::Time start_time = ros::Time::now();

        float Const_Current_data_to_Torque, Const_Gear_Ratio, UWB_x_offset, UWB_y_offset, save_csv_time;
        ros::param::get("Const_Current_data_to_Torque", Const_Current_data_to_Torque);
        ros::param::get("Const_Gear_Ratio", Const_Gear_Ratio);
        ros::param::get("UWB_x_offset", UWB_x_offset);
        ros::param::get("UWB_y_offset", UWB_y_offset);
        ros::param::get("save_csv_time", save_csv_time);

        ref_points_ = readTrajectoryPoints();

        while (ros::ok()) {
            ros::Time current_time = ros::Time::now();
            Control_func();
            loop_rate.sleep();
            ros::spinOnce();
        }
        ser_.close();
    }
}