#include "race_car_pkg/control_node.h"
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
        ControlNodeCA() : ControlNode()
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

            float x_la_ca, Kp_ca, V_rate_ca, a, b;
            int UWB_Flag;
            ros::param::get("x_la_ca", x_la_ca);
            ros::param::get("Kp_ca", Kp_ca);
            ros::param::get("V_rate_ca", V_rate_ca);
            ros::param::get("vehicle_params/a", a);
            ros::param::get("vehicle_params/b", b);
            ros::param::get("UWB_Flag", UWB_Flag);

            static int control_count = 0;
            current_point_.latitude_data = latitude_;
            current_point_.longitude_data = longitude_;
            current_point_.yaw_data = yaw_;
            current_point_.Ux_data = Ux_;
            current_point_.Uy_data = Uy_;
            current_point_.r_data = r_;
            calculateXY(current_point_);

            lookahead_points_ = findLookaheadPoints(current_point_, ref_points_);
            double delta_feedforward = (a + b) * lookahead_points_.r_data / (lookahead_points_.Ux_data + 1);

            double delta_feedback, e_d, e_la;
            e_d = calculateLateralError(current_point_, lookahead_points_);
            double e_yaw = (current_point_.yaw_data - lookahead_points_.yaw_data);
            if (e_yaw > M_PI) {
                e_yaw -= 2 * M_PI;
            } else if (e_yaw < -M_PI) {
                e_yaw += 2 * M_PI;
            }
            e_la = e_d + x_la_ca * sin(e_yaw);
            delta_feedback = -Kp_ca * e_la;

            float V_ref = lookahead_points_.Ux_data * V_rate_ca;
            TxR_ = calculate_TxR_pid(Ux_, V_ref);
            delta_ = (delta_feedback + delta_feedforward) * (1.5 / (Ux_ + 1));

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
            control_count++;
            if (control_count % 10 == 0) {
                ROS_INFO_STREAM("x: " << std::fixed << std::setprecision(8) << current_point_.x_data << ", y: " << current_point_.y_data);
                ROS_INFO_STREAM("ref_x: " << lookahead_points_.x_data << ", Ref_y: " << lookahead_points_.y_data);
                ROS_INFO_STREAM("e_d: " << e_d);
                ROS_INFO_STREAM("V: " << Ux_ << ",V_ref" << V_ref);
                ROS_INFO_STREAM("yaw: " << current_point_.yaw_data << ", ref_yaw: " << lookahead_points_.yaw_data << ", e_yaw: " << e_yaw);
                ROS_INFO_STREAM("delta: " << delta_ << ", TxR: " << TxR_);
                ROS_INFO_STREAM("gps_state: " << gps_states_ << "\n");
                control_count = 0;
            }
        }
    };
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Control_node_ca");
    control_node::ControlNodeCA node;
    node.run();
    return 0;
}