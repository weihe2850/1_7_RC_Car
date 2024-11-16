#include "race_car_pkg/control_node.h"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    class ControlNodeMPC : public ControlNode
    {
    public:
        ControlNodeMPC() : ControlNode()
        {
            serial_init("/dev/stm32_vcp", 115200);
        }

    private:
        void Control_func() override
        {
            if (!ser_.isOpen()) {
                ROS_ERROR_STREAM("Serial port not open. Aborting control function.");
                return;
            }

            // 获取参数
            double Kp_mpc, V_rate_mpc, a, b;
            int UWB_Flag;
            ros::param::get("Kp_mpc", Kp_mpc);
            ros::param::get("V_rate_mpc", V_rate_mpc);
            ros::param::get("vehicle_params/a", a);
            ros::param::get("vehicle_params/b", b);
            ros::param::get("UWB_Flag", UWB_Flag);

            // 更新当前点
            current_point_.latitude_data = latitude_;
            current_point_.longitude_data = longitude_;
            current_point_.yaw_data = yaw_;
            current_point_.Ux_data = Ux_;
            current_point_.Uy_data = Uy_;
            current_point_.r_data = r_;
            calculateXY(current_point_);

            // 查找前瞻点
            lookahead_points_ = findLookaheadPoints(current_point_, ref_points_);

            // 计算误差
            double e_d = calculateLateralError(current_point_, lookahead_points_);
            double e_yaw = (current_point_.yaw_data - lookahead_points_.yaw_data);
            if (e_yaw > M_PI) {
                e_yaw -= 2 * M_PI;
            } else if (e_yaw < -M_PI) {
                e_yaw += 2 * M_PI;
            }

            // 模型预测控制算法
            double delta_mpc = calculateMPC(e_d, e_yaw, current_point_, lookahead_points_);

            // 计算参考速度
            float V_ref = lookahead_points_.Ux_data * V_rate_mpc;
            TxR_ = calculate_TxR_pid(Ux_, V_ref);

            // 构建控制数据并发送
            auto data = construct_data(delta_mpc, TxR_);
            if (UWB_Flag == 1) {
                ser_.write(data);
            } else {
                if (gps_states_ == 4) {
                    ser_.write(data);
                } else {
                    ROS_INFO_STREAM("GPS_ERROR");
                }
            }
        }

        double calculateMPC(double e_d, double e_yaw, const TrajectoryPoint& current_point, const TrajectoryPoint& lookahead_point)
        {
            // 这里是模型预测控制算法的实现
            // 这是一个示例，您需要根据实际情况实现您的MPC算法
            double delta_mpc = -Kp_mpc * (e_d + e_yaw);
            return delta_mpc;
        }
    };
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_mpc");
    control_node::ControlNodeMPC node;
    node.run();
    return 0;
}