#include "race_car_pkg/control_node.h" // 使用基类的头文件
#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <sstream>

namespace control_node
{
    class ControlNodeDF : public ControlNode
    {
    public:
        ControlNodeDF();

    private:
        void Control_func() override;
        void my_controller(float car_states[6]);
    };

    ControlNodeDF::ControlNodeDF()
        : ControlNode() // 调用基类构造函数
    {
        // 如果需要在子类中进行额外的初始化，可以在这里添加
        // serial_init("/dev/stm32_vcp", 115200);
    }

    void ControlNodeDF::Control_func()
    {
        calculateXY(current_point_);
        //模型参数
        static float m, a , b, L, Iz; 
        ros::param::get("vehicle_params/mass", m);
        ros::param::get("vehicle_params/inertia", Iz);
        ros::param::get("vehicle_params/a", a);
        ros::param::get("vehicle_params/b", b);
        L = a + b;

        static float g, mu, FzF,FzR;//FxR_max=mu*FzR
        static float B,C ,CaR ,CaF;
        ros::param::get("g", g);
        ros::param::get("tire_params/friction_coefficient", mu);
        ros::param::get("tire_params/B", B);
        ros::param::get("tire_params/C", C);
        ros::param::get("tire_params/CaF", CaF);
        ros::param::get("tire_params/CaR", CaR);
        
        FzF = m * g * b / L;
        FzR = m * g * a / L;

        static float Single_Motor_TxR_max,Single_Motor_TxR_min , delta_max,TxR_max,TxR_min;
        ros::param::get("Single_Motor_TxR_max", Single_Motor_TxR_max);
        ros::param::get("Single_Motor_TxR_min", Single_Motor_TxR_min);
        ros::param::get("delta_max", delta_max);
        TxR_max = Single_Motor_TxR_max * 2;
        TxR_min = Single_Motor_TxR_min * 2;
        //稳态状态量  rosrun serial_node drifting_controller
        static float Ux_eq=1,beta_eq=-1.4,r_eq=2,FxR_eq=2.1,delta_eq=0;
        
        //控制器参数
        static float K_r =0.4,K_Ux=0.3,K_beta=0.64,Fx_to_TxR;

        ros::param::get("df_params/K_r", K_r);
        ros::param::get("df_params/K_Ux", K_Ux);
        ros::param::get("df_params/K_beta", K_beta);
        ros::param::get("df_params/Fx_to_TxR", Fx_to_TxR);
        //过程参数
        float e_Ux=0,e_beta=0,e_r=0,r_res=0,k1=0,k2=0, aF_tire = 0, aR_tire =0,
            FxR_des=0, FyR_des=0 , FyF_des=0, remaining_F=0,aR=0,aF=0,acr=0, FxR_max =0,TxR,eps;

        FxR_max = mu * FzR;
        eps = 0.1;
        //采用哪个模式的控制量
        float flag_mode1 = 0, flag_mode2 = 0 ;

        //车辆状态
        float X=0,Y=0,theta=0,Ux=0,beta=0,r=0,V=0;
        X =current_point_.x_data;
        Y =current_point_.y_data;
        theta =current_point_.yaw_data;
        Ux=current_point_.Ux_data;
        beta =atan(current_point_.Uy_data / (Ux + 0.1));
        r =current_point_.r_data;

        //delta为正 右打;
        e_beta	= (beta- beta_eq);
        e_Ux	= Ux  - Ux_eq;
        //外环控制器
        r_res  = r_eq+K_beta*e_beta;
        e_r	   = r - r_res;
        //内环 模式一
        k1 = (fabs(Ux) < 0.01) ? a/Iz :  ( a/Iz - K_beta / fabs( m * Ux ));
        k2 = (fabs(Ux) < 0.01) ? b/Iz  :  ( b/Iz + K_beta / fabs( m * Ux ));
        FxR_des = FxR_eq - m * K_Ux * e_Ux ;
        //限幅
        FxR_des = (FxR_des < 0) ? 0 : ( (FxR_des > FxR_max) ? FxR_max : FxR_des);
        aR = atan( beta - b *r / (Ux+eps) );
        // aR = atan(beta );
   
        //最大侧偏角
        acr = atan( 3*mu*FzR/CaR ) ;
        //作用辆FxR后的剩余摩擦力
        remaining_F = sqrt( mu * FzR * mu * FzR - FxR_des * FxR_des );
        FyR_des = (fabs(aR) < fabs(acr)) ? (-CaR * tan(aR)) :( (aR > 0) ? (-remaining_F) : remaining_F );
        
        FyF_des = 1/fabs(k1) * ( k2 * FyR_des - K_beta * K_beta * e_beta - K_beta * r_eq - (K_beta + K_r) * e_r );
        //限幅
        FyF_des = (FyF_des < -mu*FzF) ? (-mu*FzF) : ( (FyF_des > mu*FzF) ? mu*FzF:FyF_des );
        // ROS_INFO("fFy=%.3f,k1=%.3f,k1_right=%.3f", FyF_des , k1,( k2 * FyR_des - K_beta * K_beta * e_beta - K_beta * r_eq - (K_beta + K_r) * e_r ));

        //判断前轮摩擦力是否溢出
        flag_mode1 = (fabs(FyF_des) < mu * FzF) ? 1 : 0;
        flag_mode2 = (fabs(FyF_des) < mu * FzF) ? 0 : 1;
        // aF_tire = atan(beta + (fabs(Ux) > 0.01 ? a * r / Ux : 0));
        aF_tire = atan(beta)*0.8;
        if( (flag_mode1 ==1) && (flag_mode2 ==0) )//模式一
        {	//输出控制量
            aF=atan(-FyF_des / 6*mu*FzF) ;
            delta_= (aF_tire -aF) + delta_eq;
            delta_= (delta_ < -delta_max) ? (-delta_max) 
                :( (delta_ > delta_max) ? delta_max : delta_);
            //驱动力到油门的转换
            TxR =FxR_des*Fx_to_TxR;
            TxR = (TxR < TxR_min) ? TxR_min : ((TxR >TxR_max) ? TxR_max:TxR );
        }
        else if( (flag_mode1 ==0) && (flag_mode2 ==1) )//模式二
        {
            FyF_des = (FyF_des < 0) ? (-mu*FzF) : (mu*FzF);
            FyR_des = 1/fabs(k2) * ( k1 * mu*FzF + K_beta * K_beta * e_beta 
                + K_beta * r_eq + (K_beta + K_r) * e_r );
            FyR_des = (FyR_des < -mu*FzR) ? (-mu*FzR) 
                : ( (FyR_des > mu*FzR) ? mu*FzR : FyR_des);
            FxR_des = sqrt( mu * FzR * mu * FzR - FyR_des * FyR_des );
            FxR_des = (FxR_des < 0) ? 0 : ( (FxR_des > FxR_max) ? FxR_max : FxR_des);

            aF=atan(-FyF_des / 6*mu*FzF) ;

            delta_= (aF_tire -aF) + delta_eq;
            delta_= (delta_ < -delta_max) ? (-delta_max) 
                :( (delta_ > delta_max) ? delta_max : delta_);
            TxR =FxR_des*Fx_to_TxR;
            TxR = (TxR < TxR_min) ? TxR_min : ((TxR >TxR_max) ? TxR_max:TxR );
        }
        else
        {
            ROS_INFO("error");
            flag_mode1=0;
            flag_mode2=0;
        }
        // if( fabs(Ux)<0.02 || fabs(r)<0.02 ||fabs(beta)<0.02)
        // {
        //     delta_ = delta_max ;
        //     TxR=TxR_max;
        //     // ROS_INFO("open_loop_control");
        // }


        Single_Motor_TxR_ = TxR /2;
        // delta_ = ;

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
        static int control_count = 0;
        control_count++;
        if (control_count % 10 == 0) {
            ROS_INFO_STREAM("x: " << std::fixed << std::setprecision(8) << current_point_.x_data << ", y: " << current_point_.y_data);
            control_count = 0;
        }
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_df");
    control_node::ControlNodeDF node;
    std::thread serialThread(&control_node::ControlNode::serialLoop, &node);
    node.run();
    serialThread.join();
    return 0;
}