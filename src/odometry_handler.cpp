/**
 * @file odometry_handler.cpp
 * @brief 处理轮式里程计信息
 * @details 
 * @author Beta-Tao
 * @date 2022-04-12
 */

#include "in2ulv_localization/odometry_handler.h"

namespace inin
{
    namespace in2ulv_localization
    {

        OdometryHandler::OdometryHandler() :
            SensorHandler<nav_msgs::OdometryConstPtr>("odometry")
        {

        }

        bool OdometryHandler::ProcessTwist(KalmanFilter::Measurement::Ptr& twist_measurement,
                                           const nav_msgs::OdometryConstPtr& sensor_data_ptr,
                                           const Eigen::Isometry3d& pose_estimate)
        {
            /* 设置观测量信息 */
            twist_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            twist_measurement->topic_name_ = sensor_name_ + "_twist";
            twist_measurement->update_vector_.resize(KalmanFilter::PoseSystem::STATE_SIZE, static_cast<int>(false));
            /* Odometry 观测结果是载体 x 轴线速度 */
            for (int i = 0; i < PoseSystem::LINEAR_V_SIZE; i++)
            {
                twist_measurement->update_vector_[i + PoseSystem::LINEAR_V_OFFSET] = static_cast<int>(true);
            }
            /* 设置观测结果和方差 */
            twist_measurement->measurement_.setZero(PoseSystem::STATE_SIZE);
            twist_measurement->measurement_[PoseSystem::StateMemberVx] = sensor_data_ptr->twist.twist.linear.x;
            twist_measurement->measurement_[PoseSystem::StateMemberVy] = 0.0;
            twist_measurement->measurement_[PoseSystem::StateMemberVz] = 0.0;
            // TODO 设置 Odometry 结果方差的方法需要更详细一点
            twist_measurement->covariance_ = Eigen::MatrixXd(PoseSystem::STATE_SIZE,
                                                             PoseSystem::STATE_SIZE).setIdentity() * 0.2;
            twist_measurement->mahalanobis_thresh_ = 10;

            return true;
        }
    }
}
