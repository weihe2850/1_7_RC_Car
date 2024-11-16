#include "race_car_pkg/control_node.h"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    ControlNode::ControlNode()
        : V_(0), beta_(0), r_(0), accel_x_(0), accel_y_(0), speed_R_(0), delta_(0), TxR_(0),
          Ux_(0), Uy_(0), UWB_x_(0), UWB_y_(0), ekf_x_(0), ekf_y_(0),
          latitude_(0), longitude_(0), altitude_(0),
          roll_(0), pitch_(0), yaw_(0), gps_states_(0)
    {
        states_sub_ = nh_.subscribe("states", 1000, &ControlNode::statesCallback, this);
    }

    void ControlNode::statesCallback(const std_msgs::Float64MultiArray::ConstPtr& msg)
    {
        if (msg->data.size() == kStateSize) {
            Ux_ = msg->data[Ux_Index];
            Uy_ = msg->data[Uy_Index];
            r_ = msg->data[r_Index];
            accel_x_ = msg->data[accel_x_Index];
            accel_y_ = msg->data[accel_y_Index];
            speed_R_ = msg->data[speed_R_Index];
            latitude_ = msg->data[latitude_Index];
            longitude_ = msg->data[longitude_Index];
            altitude_ = msg->data[altitude_Index];
            roll_ = msg->data[roll_Index];
            pitch_ = msg->data[pitch_Index];
            yaw_ = msg->data[yaw_Index];
            gps_states_ = msg->data[gps_states_Index];
            UWB_x_ = msg->data[UWB_x_Index];
            UWB_y_ = msg->data[UWB_y_Index];
            Ux_ = speed_R_ * 0.005655;
        }
    }

    void ControlNode::calculateXY(TrajectoryPoint& point)
    {
        double const_origin_latitude, const_origin_longitude, angle_rotation, EARTH_RADIUS;
        ros::param::get("const_origin_latitude", const_origin_latitude);
        ros::param::get("const_origin_longitude", const_origin_longitude);
        ros::param::get("angle_rotation", angle_rotation);
        ros::param::get("EARTH_RADIUS", EARTH_RADIUS);
        int UWB_Flag;
        ros::param::get("UWB_Flag", UWB_Flag);

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

        if (UWB_Flag)
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
        bool isFirstLine = true;

        while (std::getline(file, line)) {
            if (isFirstLine) {
                isFirstLine = false;
                continue;
            }
            std::stringstream lineStream(line);
            std::string cell;
            TrajectoryPoint point;
            std::getline(lineStream, cell, ',');
            point.x_data = std::stod(cell);
            std::getline(lineStream, cell, ',');
            point.y_data = std::stod(cell);
            std::getline(lineStream, cell, ',');
            point.yaw_data = std::stod(cell);
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

    std::vector<uint8_t> ControlNode::construct_data(double delta_rad, double TxR_Nm, uint16_t control_model)
    {
        std::vector<uint8_t> data = {0x5A, 0xA5, 0x00, 0x00, 0x00, 0x00};
        uint16_t control_mode = 0x00;
        float Const_Output_to_Torque;
        ros::param::get("Const_Output_to_Torque", Const_Output_to_Torque);

        float delta_deg = delta_rad * (180.0 / M_PI);
        float rear_wheel_drive_Output = TxR_Nm / Const_Output_to_Torque;

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

    double ControlNode::calculate_delta_pid(double r_car, double r_ref)
    {
        double Kp_r;
        ros::param::get("Kp_r", Kp_r);
        float delta_pid = 0;
        delta_pid = -Kp_r * (r_car - r_ref);
        return delta_pid;
    }

    float ControlNode::calculate_TxR_pid(double V_car, double V_ref)
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

        float Const_Output_to_Torque, Const_Gear_Ratio, UWB_x_offset, UWB_y_offset, save_csv_time;
        ros::param::get("Const_Output_to_Torque", Const_Output_to_Torque);
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
