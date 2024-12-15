#include <casadi/casadi.hpp>
#include <eigen3/Eigen/Dense>
#include <iostream>

#include "race_car_pkg/car_model.h"
#include "race_car_pkg/mpc_func.h"
 
#include<typeinfo> //查看数据类型
 
int main()
{
    Eigen::Vector3f states; //小车实时状态
    Eigen::Vector2f real_controls; //真实控制量
    states<<0,0,0;
    real_controls<<1,0.2;
 
    float ts = 0.2; //仿真离散时间
 
    Car car(ts,states); //创建小车
 
    int k=0;  //仿真步数，随仿真时间累加
    float sim_time; //仿真时间
 
    std::vector<float> y_simdata; //小车运行轨迹
    std::vector<float> x_simdata;
 
    std::vector<float> t_simdata;
    std::vector<float> v_simdata;
    std::vector<float> omega_simdata; //存储求解出的最优控制序列
 
    int predict_step=100;        //NMPC预测步长
    NMPC1 nmpc(predict_step,ts); //创建NMPC控制器
 
    std::vector<Eigen::Matrix<float,3,1>> predict_trajectory; //存储NMPC预测轨迹
 
    Eigen::Vector3f desired_states;  //小车期望状态（控制目标）
    Eigen::Vector2f desired_controls; //小车期望控制量（控制目标）
    Eigen::Vector2f controls;  //最优序列的第一个控制量
 
    desired_states<<30,30,M_PI/2;
    desired_controls<<0,0;
    controls<<1,0.1;
 
    while(true)
    {
        //仿真时间递增
        k++;
        sim_time = (k-1)*ts;
 
        t_simdata.push_back(sim_time); //存储仿真时间
 
        //最优控制问题求解
        nmpc.opti_solution(states,desired_states,desired_controls); //优化求解
        controls = nmpc.get_controls(); //获得最优序列的第一个控制量
 
        v_simdata.push_back(controls[0]);
        omega_simdata.push_back(controls[1]);
 
        predict_trajectory = nmpc.get_predict_trajectory();  //获得预测的轨迹
 
        std::vector<float> predict_x_data; //预测轨迹
        std::vector<float> predict_y_data;
 
        for(int j=0;j<predict_step+1;j++)
        {
            predict_x_data.push_back(predict_trajectory.at(j)[0]);
            predict_y_data.push_back(predict_trajectory.at(j)[1]);
        }
 
        // std::cout<<predict_trajectory<<endl;
 
        // predict_x_data.push_back((casadi::DM) predict_trajectory(0,1));
 
        //模型状态更新
        car.state_update(controls);
        states = car.get_states();
        real_controls = car.get_controls();
 
        x_simdata.push_back(states[0]);
        y_simdata.push_back(states[1]);
 
        if (k % 10 == 0)
        {
            // 输出仿真数据到终端
            std::cout << "Simulation step: " << k << std::endl;
            std::cout << "Current position: (" << states(0) << ", " << states(1) << "), psi: " << states(2) << std::endl;
            std::cout << "Desired position: (" << desired_states[0] << ", " << desired_states[1] << "), desired psi: " << desired_states[2] << std::endl;

            // 输出当前时刻的仿真轨迹数据
            if (!x_simdata.empty() && !y_simdata.empty())
            {
                std::cout << "Current simulated trajectory (x, y): (" << x_simdata.back() << ", " << y_simdata.back() << ")" << std::endl;
            }

            // 输出当前时刻的预测轨迹数据
            if (!predict_x_data.empty() && !predict_y_data.empty())
            {
                std::cout << "Current predicted trajectory (x, y): (" << predict_x_data.back() << ", " << predict_y_data.back() << ")" << std::endl;
            }

            // 输出当前时刻的速度数据
            if (!v_simdata.empty())
            {
                std::cout << "Current velocity data: t: " << t_simdata.back() << ", v: " << v_simdata.back() << std::endl;
            }

            // 输出当前时刻的角速度数据
            if (!omega_simdata.empty())
            {
                std::cout << "Current angular velocity data: t: " << t_simdata.back() << ", omega: " << omega_simdata.back() << std::endl;
            }
        }
        
 
    }
 
    //测试
    // casadi::SX mm = casadi::SX::sym("mm",2,2);
    // mm(0,0) = (float)(1);
    // mm(0,1) = (float)(2);
    // mm(1,0) = (float)(3);
    // mm(1,1) = (float)(4);
 
    // std::cout<< "mm: "<<mm<<endl;
 
    // casadi::SX xx = casadi::SX::reshape(mm,-1,1);
 
    // std::cout<<"xx: "<<xx<<endl;
 
    // std::cout<<"mm: "<<mm<<endl;
    // std::vector<casadi::SX> xx;
    // xx.push_back(mm);
    // std::cout<<"xx: "<<xx<<endl;
    // float a = 10;
    // std::cout<<"数据类型: "<<typeid(xx).name()<<endl;
 
    // std::cout<< "hello world!"<< std::endl;
}