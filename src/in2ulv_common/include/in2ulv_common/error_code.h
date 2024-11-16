/**
 * @Description
 * @Version
 * @Author wangtao
 * @LastEditors
 * @Date 2021/7/26
 * @LastEditTime
 */

#ifndef SRC_ERROR_CODE_H_
#define SRC_ERROR_CODE_H_

namespace inin
{
namespace in2ulv_common
{
    enum ULVErrorCode
    {
        /* BASIC */
        MODULE_OK = 0,      // 修改为 MODULE_OK 是因为部分库的宏定义包含 OK, 此时共用会出错
        MODULE_ERROR = 1,

        /* DRIVER */
        // camera
        CAMERA_ERROR = 10000,
        IMAGE_READ_ERROR = 10001,
        STOP_DETECTION = 10002,
        // lidar
        LIDAR_ERROR = 10100,

        /* PERCEPTION */
        // hook detection
        HOOK_DETECTION_ERROR = 11000,

        /* MAP */
        //mapping
        MAPPING_ERROR = 12000,
        //map
        MAP_ERROR = 12100,

        /* LOCALIZATION */
        LOCALIZATION_INIT_ERROR = 13000,
        LOCALIZATION_DRIVER_ERROR,
        LOCALIZATION_PROCESS_ERROR,

        /* DECISION */
        //decision
        DECISION_ERROR = 14000,

        /* PLANNING */
        PLANNING_HDMAP_ERROR = 15000,
        PLANNING_GLOBAL_PLAN_ERROR,
        PLANNING_TRACK_ERROR,
        PLANNING_LOCAL_PLAN_ERROR,

//        //global planner
//        GP_INITILIZATION_ERROR = 15000,
//        GP_GET_POSE_ERROR,
//        GP_POSE_TRANSFORM_ERROR,
//        GP_GOAL_INVALID_ERROR,
//        GP_PATH_SEARCH_ERROR,
//        GP_MOVE_COST_ERROR,
//        GP_MAX_RETRIES_FAILURE,
//        GP_TIME_OUT_ERROR,
//        //local planner
//        LP_PLANNING_ERROR = 15100,
//        LP_INITILIZATION_ERROR,
//        LP_ALGORITHM_INITILIZATION_ERROR,
//        LP_ALGORITHM_TRAJECTORY_ERROR,
//        LP_ALGORITHM_GOAL_REACHED,
//        LP_MAX_ERROR_FAILURE,
//        LP_PLANTRANSFORM_ERROR,
//        LP_OPTIMAL_ERROR,
//        LP_VELOCITY_ERROR,
//        LP_OSCILLATION_ERROR,

        /* CONTROL */
        CONTROL_ERROR = 16000,

        /* BASE Unused */
        BASE_INS_RECV_ERROR = 17000,
        BASE_CHASSIS_SEND_ERROR,
        BASE_CHASSIS_RECV_ERROR,
        BASE_HOOK_SEND_ERROR,
        BASE_HOOK_RECV_ERROR,
        BASE_TBOX_SEND_ERROR,
        BASE_TBOX_RECV_ERROR,
        BASE_IOBUTTON_ERROR,


    };
}
}

#endif
