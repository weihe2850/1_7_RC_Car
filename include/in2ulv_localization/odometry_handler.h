/**
 * @file odometry_handler.h
 * @brief 处理轮式里程计信息
 * @details 
 * @author Beta-Tao
 * @date 2022-04-12
 */

#ifndef SRC_ODOMETRY_HANDLER_H
#define SRC_ODOMETRY_HANDLER_H

#include <memory>

#include <nav_msgs/Odometry.h>

#include "Kalman_Filter_Library/filter_common.h"
#include "Kalman_Filter_Library/pose_system_common.h"

#include "sensor_handler.hpp"

namespace inin
{
    namespace in2ulv_localization
    {
        /**
         * @brief 轮式里程计处理类
         */
        class OdometryHandler : public SensorHandler<nav_msgs::OdometryConstPtr>
        {
        public:
            typedef std::unique_ptr<OdometryHandler> Ptr;

            /**
             * @brief Odometry 数据处理类构造函数
             * @details Odometry 接收不需要配置什么参数
             */
            OdometryHandler();

        protected:
            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的速度观测
             * @param [out] twist_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，不使用，设置默认值
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessTwist(KalmanFilter::Measurement::Ptr& twist_measurement,
                              const nav_msgs::OdometryConstPtr& sensor_data_ptr,
                              const Eigen::Isometry3d& pose_estimate = Eigen::Isometry3d::Identity());
        };
    }
}


#endif //SRC_ODOMETRY_HANDLER_H
