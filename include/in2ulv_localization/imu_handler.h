/**
 * @file imu_handler.h
 * @brief 处理 IMU 信息
 * @details 
 * @author Beta-Tao
 * @date 2022-04-12
 */

#ifndef SRC_IMU_HANDLER_H
#define SRC_IMU_HANDLER_H

#include <memory>

#include <ros/ros.h>
#include <sensor_msgs/Imu.h>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include "Kalman_Filter_Library/filter_common.h"
#include "Kalman_Filter_Library/pose_system_common.h"

#include "sensor_handler.hpp"

namespace inin
{
    namespace in2ulv_localization
    {
        /**
         * @brief IMU 处理类
         */
        class IMUHandler : public SensorHandler<sensor_msgs::ImuConstPtr>
        {
        public:
            typedef std::unique_ptr<IMUHandler> Ptr;

            /**
             * @brief IMU 数据处理类构造函数
             * @param[in] imu_acc_noise IMU 加速度的噪声方差
             * @param[in] imu_gyr_noise IMU 角速度的噪声方差
             * @param[in] imu_acc_bias IMU 加速度的零偏
             * @param[in] imu_gyr_bias IMU 角速度的零偏
             * @param[in] imu_gravity 重力加速度
             */
            IMUHandler(const double& imu_acc_noise, const double& imu_gyr_noise,
                       const double& imu_acc_bias, const double& imu_gyr_bias,
                       const double& imu_gravity);

        protected:
            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的速度观测
             * @param [out] twist_measurement 速度观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，不使用，设置默认值
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessTwist(Measurement::Ptr& twist_measurement, const sensor_msgs::ImuConstPtr& sensor_data_ptr,
                              const Eigen::Isometry3d& pose_estimate = Eigen::Isometry3d::Identity()) final;

            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的加速度观测
             * @param [out] acceleration_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，不使用，设置默认值
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessAcceleration(Measurement::Ptr& acceleration_measurement,
                                     const sensor_msgs::ImuConstPtr& sensor_data_ptr,
                                     const Eigen::Isometry3d& pose_estimate) final;

        private:
            /// @brief IMU 加速度的噪声方差
            double imu_acc_noise_;

            /// @brief IMU 角速度的噪声方差
            double imu_gyr_noise_;

            /// @brief IMU 加速度的零偏
            double imu_acc_bias_;

            /// @brief IMU 角速度的零偏
            double imu_gyr_bias_;

            /// @brief 重力加速度
            double imu_gravity_;
        };
    }
}


#endif //SRC_IMU_HANDLER_H
