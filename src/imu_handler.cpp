/**
 * @file imu_handler.cpp
 * @brief 处理 IMU 信息
 * @details 
 * @author Beta-Tao
 * @date 2022-04-12
 */

#include "in2ulv_localization/imu_handler.h"

namespace inin
{
    namespace in2ulv_localization
    {
        IMUHandler::IMUHandler(const double& imu_acc_noise, const double& imu_gyr_noise, const double& imu_acc_bias,
                               const double& imu_gyr_bias, const double& imu_gravity) :
            SensorHandler<sensor_msgs::ImuConstPtr>("imu"),
            imu_acc_noise_(imu_acc_noise),
            imu_gyr_noise_(imu_gyr_noise),
            imu_acc_bias_(imu_acc_bias),
            imu_gyr_bias_(imu_gyr_bias),
            imu_gravity_(imu_gravity)
        {

        }

        bool IMUHandler::ProcessTwist(Measurement::Ptr& twist_measurement,
                                      const sensor_msgs::ImuConstPtr& sensor_data_ptr,
                                      const Eigen::Isometry3d& pose_estimate)
        {
            /* 设置观测量信息 */
            twist_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            twist_measurement->topic_name_ = sensor_name_ + "_twist";
            twist_measurement->update_vector_.resize(PoseSystem::STATE_SIZE, static_cast<int>(false));
            /* 观测结果是角速度 */
            for (int i = 0; i < PoseSystem::ANGULAR_V_SIZE; i++)
            {
                twist_measurement->update_vector_[PoseSystem::ANGULAR_V_OFFSET + i] = static_cast<int>(true);
            }
            /* 设置观测结果和方差 */
            twist_measurement->measurement_.setZero(PoseSystem::STATE_SIZE);
            twist_measurement->measurement_[PoseSystem::StateMemberVroll] = sensor_data_ptr->angular_velocity.x - imu_gyr_bias_;
            twist_measurement->measurement_[PoseSystem::StateMemberVpitch] = sensor_data_ptr->angular_velocity.y - imu_gyr_bias_;
            twist_measurement->measurement_[PoseSystem::StateMemberVyaw] = sensor_data_ptr->angular_velocity.z - imu_gyr_bias_;
            // TODO 设置 IMU 结果方差的方法需要更详细一点
            Eigen::VectorXd covariance(PoseSystem::STATE_SIZE);
            covariance[PoseSystem::StateMemberVroll] = imu_gyr_noise_;
            covariance[PoseSystem::StateMemberVpitch] = imu_gyr_noise_;
            covariance[PoseSystem::StateMemberVyaw] = imu_gyr_noise_;
            twist_measurement->covariance_ = covariance.asDiagonal();
            twist_measurement->mahalanobis_thresh_ = 3;

            return true;
        }

        bool IMUHandler::ProcessAcceleration(Measurement::Ptr& acceleration_measurement,
                                             const sensor_msgs::ImuConstPtr& sensor_data_ptr,
                                             const Eigen::Isometry3d& pose_estimate)
        {
            /* 计算重力加速度在载体坐标系下的投影 */
            Eigen::Vector3d norm_acc(0, 0, imu_gravity_);
            Eigen::Vector3d rotation_norm_acc = pose_estimate.rotation().inverse() * norm_acc;

            /* 设置观测量信息 */
            acceleration_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            acceleration_measurement->topic_name_ = sensor_name_ + "_acceleration";
            acceleration_measurement->update_vector_.resize(PoseSystem::STATE_SIZE, static_cast<int>(false));
            /* IMU 观测结果是角速度和 X 轴加速度 */
            for (int i = 0; i < PoseSystem::LINEAR_A_SIZE; i++)
            {
                acceleration_measurement->update_vector_[PoseSystem::LINEAR_A_OFFSET + i] = static_cast<int>(true);
            }
            /* 设置观测结果和方差 */
            acceleration_measurement->measurement_.setZero(PoseSystem::STATE_SIZE);
            acceleration_measurement->measurement_[PoseSystem::StateMemberAx] =
                sensor_data_ptr->linear_acceleration.x - rotation_norm_acc[0] - imu_acc_bias_;
//            measurement[KalmanFilter::PoseSystem::StateMemberAy] =
//                imu_const_ptr->linear_acceleration.y - rotation_norm_acc[1] - imu_acc_bias_;
//            measurement[KalmanFilter::PoseSystem::StateMemberAz] =
//                imu_const_ptr->linear_acceleration.z - rotation_norm_acc[2] - imu_acc_bias_;
            acceleration_measurement->measurement_[PoseSystem::StateMemberAy] = 0.0;
            acceleration_measurement->measurement_[PoseSystem::StateMemberAz] = 0.0;
            // TODO 设置 IMU 结果方差的方法需要更详细一点
            Eigen::VectorXd covariance(KalmanFilter::PoseSystem::STATE_SIZE);
//            covariance[KalmanFilter::PoseSystem::StateMemberAx] = imu_acc_noise_;
//            covariance[KalmanFilter::PoseSystem::StateMemberAy] = imu_acc_noise_;
//            covariance[KalmanFilter::PoseSystem::StateMemberAz] = imu_acc_noise_;
            covariance[KalmanFilter::PoseSystem::StateMemberAx] = 0.01;
            covariance[KalmanFilter::PoseSystem::StateMemberAy] = 0.01;
            covariance[KalmanFilter::PoseSystem::StateMemberAz] = 0.01;
            acceleration_measurement->covariance_ = covariance.asDiagonal();
            acceleration_measurement->mahalanobis_thresh_ = 20;

            return true;
        }
    }
}
