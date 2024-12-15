#include "race_car_pkg/control_node.h" // 使用基类的头文件
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    class ControlNodeHW : public ControlNode
    {
    public:
        ControlNodeHW();

    private:
        void Control_func() override;
    };

    ControlNodeHW::ControlNodeHW()
        : ControlNode() // 调用基类构造函数
    {
        // 如果需要在子类中进行额外的初始化，可以在这里添加
        // serial_init("/dev/stm32_vcp", 115200);
    }

    void ControlNodeHW::Control_func()
    {
        if (!ser_.isOpen()) {
            ROS_ERROR_STREAM("Serial port not open. Aborting control function.");
            return;
        }

        double Kp_yaw, V_rate;
        ros::param::get("Kp_yaw", Kp_yaw);
        ros::param::get("V_rate", V_rate);
        int lookahead_length;
        ros::param::get("lookahead_length", lookahead_length);
        static int control_count = 0;

        // 更新 current_point_ 已在基类的 statesCallback 中完成
        calculateXY(current_point_);

        lookahead_point_ = findLookaheadPoint(current_point_, ref_points_,lookahead_length);
        lookahead_point_.yaw_data = atan2(lookahead_point_.y_data - current_point_.y_data, lookahead_point_.x_data - current_point_.x_data);
        double e_yaw = (current_point_.yaw_data - lookahead_point_.yaw_data);
        if (e_yaw > M_PI) {
            e_yaw -= 2 * M_PI;
        } else if (e_yaw < -M_PI) {
            e_yaw += 2 * M_PI;
        }

        double r_ref = -Kp_yaw * e_yaw;
        double V_ref = lookahead_point_.Ux_data * V_rate;

        Single_Motor_TxR_ = calculate_TxR_pid(Ux_, V_ref) ;
        // Single_Motor_TxR_ = 0.4 ;
        delta_ = calculate_delta_pid(r_, r_ref) * (1.0 / (Ux_ + 1));

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
            ROS_INFO_STREAM("e_yaw: " << e_yaw);
            ROS_INFO_STREAM("V: " << Ux_ << ", V_ref: " << V_ref);
            ROS_INFO_STREAM("delta: " << delta_ << ", TxR: " << Single_Motor_TxR_);
            ROS_INFO_STREAM("gps_state: " << gps_states_ << "\n");
            control_count = 0;
        }
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_hw");
    control_node::ControlNodeHW node;
    std::thread serialThread(&control_node::ControlNode::serialLoop, &node);
    node.run();
    serialThread.join();
    return 0;
}