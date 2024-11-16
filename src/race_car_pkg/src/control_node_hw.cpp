#include "race_car_pkg/control_node.h"
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
        ControlNodeHW() : ControlNode() 
        {
             serial_init("/dev/stm32_vcp", 115200);
        }

    private:
        void Control_func() override
        {
            double Kp_yaw, V_rate;
            ros::param::get("Kp_yaw", Kp_yaw);
            ros::param::get("V_rate", V_rate);
            int UWB_Flag;
            ros::param::get("UWB_Flag", UWB_Flag);
            current_point_.latitude_data = latitude_;
            current_point_.longitude_data = longitude_;
            current_point_.yaw_data = yaw_;
            current_point_.Ux_data = Ux_;
            current_point_.Uy_data = Uy_;
            current_point_.r_data = r_;
            calculateXY(current_point_);

            lookahead_points_ = findLookaheadPoints(current_point_, ref_points_);
            lookahead_points_.yaw_data = atan2(lookahead_points_.y_data - current_point_.y_data, lookahead_points_.x_data - current_point_.x_data);
            double e_yaw = (current_point_.yaw_data - lookahead_points_.yaw_data);
            if (e_yaw > M_PI) {
                e_yaw -= 2 * M_PI;
            } else if (e_yaw < -M_PI) {
                e_yaw += 2 * M_PI;
            }

            double r_ref = -Kp_yaw * e_yaw;
            double V_ref = lookahead_points_.Ux_data * V_rate;

            TxR_ = calculate_TxR_pid(Ux_, V_ref);
            delta_ = calculate_delta_pid(r_, r_ref) * (1.5 / (Ux_ + 1));

            auto data = construct_data(delta_, TxR_);
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
    };
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_hw");
    control_node::ControlNodeHW node;
    node.run();
    return 0;
}