#include <casadi/casadi.hpp>
#include <eigen3/Eigen/Dense>

#include "race_car_pkg/control_node.h" // 使用基类的头文件
#include "race_car_pkg/mpc_func.h"
 
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
        ControlNodeMPC();
        void controlLoop();

    private:
        void Control_func() override;
    };

    ControlNodeMPC::ControlNodeMPC()
        : ControlNode() // 调用基类构造函数
    {
        // 如果需要在子类中进行额外的初始化，可以在这里添加
        // serial_init("/dev/stm32_vcp", 115200);
    }

    void ControlNodeMPC::Control_func()
    {
        //获取当前状态
        calculateXY(current_point_);
        int predict_step=10;        //NMPC预测步长
        float ts = 0.2; //仿真离散时间1
        lookahead_points_ = findLookaheadPoints(current_point_, ref_points_,predict_step);
        lookahead_point_ = lookahead_points_.back();
        Eigen::Vector3f states; //小车实时状态
        
        std::vector<float> omega_simdata; //存储求解出的最优控制序列
        
        NMPC1 nmpc(predict_step,ts); //创建NMPC控制器

        std::vector<Eigen::Matrix<float,3,1>> predict_trajectory; //存储NMPC预测轨迹
        Eigen::Vector3f desired_states;  //小车期望状态（控制目标）
        Eigen::Vector2f desired_controls; //小车期望控制量（控制目标）
        Eigen::Vector2f controls;  //最优序列的第一个控制量

        //初值设定
        states << current_point_.x_data, current_point_.y_data, current_point_.yaw_data;
        controls<<current_point_.Ux_data,current_point_.r_data;
        desired_states<<lookahead_point_.x_data,lookahead_point_.y_data,lookahead_point_.yaw_data;
        desired_controls<<lookahead_point_.Ux_data,lookahead_point_.r_data;
            // 记录开始时间
        auto start_time = std::chrono::high_resolution_clock::now();
        //最优控制问题求解
        nmpc.opti_solution(states,desired_states,desired_controls); //优化求解
        controls = nmpc.get_controls(); //获得最优序列的第一个控制量
        // 记录结束时间
        auto end_time = std::chrono::high_resolution_clock::now();

        auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();

        predict_trajectory = nmpc.get_predict_trajectory();  //获得预测的轨迹
    
        std::vector<float> predict_x_data; //预测轨迹
        std::vector<float> predict_y_data;
    
        for(int j=0;j<predict_step+1;j++)
        {
            predict_x_data.push_back(predict_trajectory.at(j)[0]);
            predict_y_data.push_back(predict_trajectory.at(j)[1]);
        }

        // 更新 current_point_ 已在基类的 statesCallback 中完成
        double V_ref =  controls(0);
        double r_ref =  controls(1);
        
        // 使用 MPC 计算控制输入
        Single_Motor_TxR_ = calculate_TxR_pid(current_point_.Ux_data, V_ref);
        delta_ = calculate_delta_pid(current_point_.r_data, r_ref) * (1.0 / (Ux_ + 1));

        //调试
        static int control_count = 0;
        control_count++;
        if (control_count % 50 == 0) {
            // 输出当前位置信息
            std::cout << "\n Current position: (" << states(0) << ", " << states(1) << "), psi: " << states(2) << std::endl;
            std::cout << "Current control values: v: " << current_point_.Ux_data << ", r: " <<current_point_.r_data << std::endl;
            // 输出当前时刻的控制量
            std::cout << "Ref control values: v: " << controls(0) << ", r: " << controls(1) << std::endl;
            std::cout << "MPC computation time: " << duration << " ms" << std::endl;

            // 输出当前时刻的预测轨迹数据
            if (!predict_x_data.empty() && !predict_y_data.empty()) {
                std::cout << "Current predicted trajectory:" << std::endl;
                for (size_t i = 0; i < predict_x_data.size(); ++i) {
                    std::cout << "(" << predict_x_data[i] << ", " << predict_y_data[i] << ")" << std::endl;
                }
            }

            // 输出当前时刻的参考轨迹数据
            if (!lookahead_points_.empty()) {
                std::cout << "Current lookahead points:" << std::endl;
                for (const auto& point : lookahead_points_) {
                    std::cout << "(" << point.x_data << ", " << point.y_data << ")" << std::endl;
                }
            }

            control_count = 0;
        }
    }
    
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_mpc");
    control_node::ControlNodeMPC node;

    std::thread serialThread(&control_node::ControlNode::serialLoop, &node);
    node.run();
    serialThread.join();
    // controlThread.join();
    return 0;
}