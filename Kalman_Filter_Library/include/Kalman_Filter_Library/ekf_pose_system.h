/**
 * @file ekf_pose_system.h
 * @brief 使用 EKF 的动态位姿系统
 * @details 继承于 FilterBase，使用 EKF 来估计位姿
 * @author Beta-Tao
 * @date 2022-03-30
 */

#ifndef KALMAN_FILTER_LIBRARY_EKF_POSE_SYSTEM_H
#define KALMAN_FILTER_LIBRARY_EKF_POSE_SYSTEM_H

#include "Kalman_Filter_Library/filter_base.h"
#include "Kalman_Filter_Library/pose_system_common.h"
#include "Kalman_Filter_Library/filter_common.h"

namespace KalmanFilter
{
    class EkfPoseSystem : public FilterBase
    {
    public:
        /**
         * @brief EkfPoseSystem 类构造函数
         */
        EkfPoseSystem();

        /**
         * @brief EkfPoseSystem 类析构函数
         */
        ~EkfPoseSystem() override = default;

        /**
         * @brief 状态预测函数
         * @details 利用运动模型向前推算状态和状态协方差矩阵
         * @details 该函数继承自父类 FilterBase
         * @param[in] reference_time 做出预测的时间，用于控制项
         * @param[in] delta_time 预测的时间步长
         */
        void Predict(const double& reference_time, const double& delta_time) final;

        /**
         * @brief 观测修正函数
         * @details 利用观测模型(调整为状态量的线性函数)修正当前系统状态量
         * @details 该函数继承自父类 FilterBase
         * @param[in] measurement 需要与状态估计值融合的观测结果
         */
        void Correct(const Measurement& measurement) final;

        /**
         * @brief 提取系统当前的位姿
         * @param[out] pose 系统当前的位姿
         */
        void StateToPose(Eigen::Isometry3d& pose);

        /**
         * @brief 提取系统当前的旋转
         * @param[out] rotation 系统当前的旋转
         */
        void StateToRotation(Eigen::Matrix3d& rotation);
    };
}


#endif //KALMAN_FILTER_LIBRARY_EKF_POSE_SYSTEM_H
