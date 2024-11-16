/*
 * @Author: your name
 * @Date: 2021-09-15 21:31:29
 * @LastEditTime: 2021-10-22 08:56:36
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: /in2ulv_ws/src/in2ulv_common/include/in2ulv_common/msg_topic_name.h
 */
/**
 * @Description
 * @Version
 * @Author LEEKA
 * @LastEditors
 * @Date 2021/8/16
 * @LastEditTime
 */
#pragma once
#include <string>
namespace inin
{
namespace in2ulv_common
{
    /* base节点Publisher 不同Msg的话题名称 */
    const std::string topic_name_chassis_msg = "ULV_chassis_info",
                      topic_name_hook_msg = "ULV_hook_info",
                      topic_name_tbox_msg = "ULV_tbox_info",
                      topic_name_base_module_info_msg = "ULV_module_info",
                      topic_name_init_completed_signal_msg = "ULV_base_init_completed_signal",
                      topic_name_ins_std_msg = "ULV_ins_std_info",
                      topic_name_imu_msg = "ULV_imu_std_msg",
                      topic_name_gnss_msg = "ULV_gnss_std_msg",
                      topic_name_io_button_msg = "ULV_io_button_info",
                      topic_name_ucu_request_msg = "ULV_ucu_request_info",
                      topic_name_odo_msg = "ULV_odometry_info",
                      topic_name_hook_ctrl_msg = "ULV_hook_ctrl_msg";
    
}
}