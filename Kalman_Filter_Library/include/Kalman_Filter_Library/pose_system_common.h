/**
 * @file pose_system_common.h
 * @brief 位姿动态系统常量定义
 * @details 包含状态变量枚举等常量
 * @author Beta-Tao
 * @date 2022-03-28
 */

#ifndef KALMAN_FILTER_LIBRARY_POSE_SYSTEM_COMMON_H
#define KALMAN_FILTER_LIBRARY_POSE_SYSTEM_COMMON_H

namespace KalmanFilter
{
    namespace PoseSystem
    {
        /**
         * @brief 状态变量枚举类型 \n
         * 分为导航坐标系(n系, e.g. 地图坐标系)下的状态量和载体坐标系(b系)下的状态量 \n
         * 选择的原则是使用常用传感器观测量所对应的坐标系, e.g. IMU的观测量为b系下的正交三轴的加速度和角速度 \n
         */
        enum StateMembers
        {
            StateMemberX = 0,   ///< 导航坐标系下 X 坐标
            StateMemberY,       ///< 导航坐标系下 Y 坐标
            StateMemberZ,       ///< 导航坐标系下 Z 坐标
            StateMemberRoll,    ///< 导航坐标系下 Roll(x axis) 角度
            StateMemberPitch,   ///< 导航坐标系下 Pitch(y axis) 角度
            StateMemberYaw,     ///< 导航坐标系下 Yaw(z axis) 角度
            StateMemberVx,      ///< 载体坐标系下 X 速度
            StateMemberVy,      ///< 载体坐标系下 Y 速度
            StateMemberVz,      ///< 载体坐标系下 Z 速度
            StateMemberVroll,   ///< 载体坐标系下 Roll(x axis) 角速度
            StateMemberVpitch,  ///< 载体坐标系下 Pitch(y axis) 角速度
            StateMemberVyaw,    ///< 载体坐标系下 Yaw(z axis) 角速度
            StateMemberAx,      ///< 载体坐标系下 X 加速度
            StateMemberAy,      ///< 载体坐标系下 Y 加速度
            StateMemberAz,      ///< 载体坐标系下 Z 加速度
        };

        /**
         * @brief 控制变量枚举类型 \n
         * 控制变量所对应的物理量是状态变量的一部分
         * @todo 当前系统未加入控制量
         */
        enum ControlMembers
        {
            ControlMemberVx = 0,
            ControlMemberVy,
            ControlMemberVz,
            ControlMemberVroll,
            ControlMemberVpitch,
            ControlMemberVyaw,
        };

        enum MeasurementType
        {
            Pose,
            Twist,
            Acceleration,
        };

        const int STATE_SIZE = 15;  ///< 状态量数量
        const int POSITION_OFFSET = StateMemberX; ///< 位置状态量偏移值
        const int ORIENTATION_OFFSET = StateMemberRoll; ///< 旋转角度偏移值
        const int POSE_OFFSET = StateMemberX;           ///< 位姿状态量偏移值
        const int LINEAR_V_OFFSET = StateMemberVx;    ///< 线速度状态量偏移值
        const int ANGULAR_V_OFFSET = StateMemberVroll;  ///< 角速度状态量偏移值
        const int TWIST_OFFSET = StateMemberVx;         ///< 速度状态量偏移值
        const int LINEAR_A_OFFSET = StateMemberAx;    ///< 线加速度状态量偏移值

        const int POSE_SIZE = 6;    ///< 位姿状态量数量
        const int TWIST_SIZE = 6;   ///< 位姿速度状态数量
        const int POSITION_SIZE = 3;    ///< 位置状态量数量
        const int ORIENTATION_SIZE = 3; ///< 旋转状态量数量
        const int LINEAR_V_SIZE = 3; ///< 线速度状态量数量
        const int ANGULAR_V_SIZE = 3;  ///< 角速度状态量数量
        const int LINEAR_A_SIZE = 3;    ///< 角速度状态量数量
    }
}

#endif //KALMAN_FILTER_LIBRARY_POSE_SYSTEM_COMMON_H
