#include "race_car_pkg/control_node.h" // 使用基类的头文件
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    class ControlNodeCA : public ControlNode
    {
    public:
        ControlNodeCA();

    private:
        void Control_func() override;
    };

    ControlNodeCA::ControlNodeCA()
        : ControlNode() // 调用基类构造函数
    {
        // 如果需要在子类中进行额外的初始化，可以在这里添加
    }

    void ControlNodeCA::Control_func()
    {
        
        if (!ser_.isOpen()) {
            ROS_ERROR_STREAM("Serial port not open. Aborting control function.");
            return;
        }

        float x_la_ca, Kp_ca, V_rate_ca, a, b;
        ros::param::get("x_la_ca", x_la_ca);
        ros::param::get("Kp_ca", Kp_ca);
        ros::param::get("V_rate_ca", V_rate_ca);
        ros::param::get("vehicle_params/a", a);
        ros::param::get("vehicle_params/b", b);
        int lookahead_length;
        ros::param::get("lookahead_length", lookahead_length);
        static int control_count = 0;

        // 更新 current_point_ 已在基类的 statesCallback 中完成
        calculateXY(current_point_);

        lookahead_point_ = findLookaheadPoint(current_point_, ref_points_,lookahead_length);
        double delta_feedforward = (a + b) * lookahead_point_.r_data / (lookahead_point_.Ux_data + 1);

        double delta_feedback, e_d, e_la;
        e_d = calculateLateralError(current_point_, lookahead_point_);
        double e_yaw = current_point_.yaw_data - lookahead_point_.yaw_data;

        // 规范化 yaw 误差到 [-π, π]
        if (e_yaw > M_PI) {
            e_yaw -= 2 * M_PI;
        } else if (e_yaw < -M_PI) {
            e_yaw += 2 * M_PI;
        }

        e_la = e_d + x_la_ca * sin(e_yaw);
        delta_feedback = -Kp_ca * e_la;

        float V_ref = lookahead_point_.Ux_data * V_rate_ca;
        Single_Motor_TxR_ = calculate_TxR_pid(Ux_, V_ref);
        delta_ = (delta_feedback + delta_feedforward) * (1.5 / (Ux_ + 1));

        auto data = construct_data(delta_, Single_Motor_TxR_);

        if (UWB_Flag_) {
            ser_.write(data);
        } else {
            if (gps_states_ == 4) {
                ser_.write(data);
            } else {
                ROS_INFO_STREAM("GPS_ERROR");
            }
        }

        control_count++;
        if (control_count % 10 == 0) {
            ROS_INFO_STREAM("x: " << std::fixed << std::setprecision(8) << current_point_.x_data << ", y: " << current_point_.y_data);
            ROS_INFO_STREAM("ref_x: " << lookahead_point_.x_data << ", Ref_y: " << lookahead_point_.y_data);
            ROS_INFO_STREAM("e_d: " << e_d);
            ROS_INFO_STREAM("V: " << Ux_ << ", V_ref: " << V_ref);
            ROS_INFO_STREAM("yaw: " << current_point_.yaw_data << ", ref_yaw: " << lookahead_point_.yaw_data << ", e_yaw: " << e_yaw);
            ROS_INFO_STREAM("delta: " << delta_ << ", TxR: " << Single_Motor_TxR_);
            ROS_INFO_STREAM("gps_state: " << gps_states_ << "\n");
            control_count = 0;
        }
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_ca");
    control_node::ControlNodeCA node;
    std::thread serialThread(&control_node::ControlNode::serialLoop, &node);
    node.run();
    serialThread.join();
    return 0;
}