/**
 * @file ins_handler.h
 * @brief 处理 INS 数据
 * @details 
 * @author Beta-Tao
 * @date 2022-04-08
 */

#ifndef SRC_INS_HANDLER_H
#define SRC_INS_HANDLER_H

#include <ros/ros.h>
#include <gps_common/conversions.h>

#include <memory>
#include <string>
#include <unordered_map>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include "in2ulv_msgs/INSStdMsg.h"

#include "Kalman_Filter_Library/filter_common.h"
#include "Kalman_Filter_Library/pose_system_common.h"

#include "sensor_handler.hpp"

namespace inin
{
    namespace in2ulv_localization
    {
        /// @brief INS 差分标志位状态表
        enum INSFlag
        {
            UNDEFINED = -1,         // 未定义
            NONE = 0,               // 无解
            FIXEDPOS = 1,           // 位置由 FIX POSITION 命令制定
            DOPPLER_VELOCITY = 8,   // 速度由即使多普勒信息导出
            SINGLE = 16,            // 单点定位
            PSRDIFT = 17,           // 伪距差分定位
            SBAS = 18,              // SBAS 定位
            L1_FLOAT = 32,          // L1 浮动解
            IONOFREE_FLOAT = 33,    // 消电离层浮点解
            NARROW_FLOAT = 34,      // 窄巷浮点解
            L1_INT = 48,            // L1 固定解
            WIDE_INT = 49,          // 宽巷固定解
            NARROW_INT = 50,        // 窄巷固定解
        };

        /// @brief INS 差分标志位对应名称
        static std::unordered_map<INSFlag, std::string> INSFlagName =
            {{INSFlag::UNDEFINED,        "UNDEFINED"},
             {INSFlag::NONE,             "NONE"},
             {INSFlag::FIXEDPOS,         "FIXEDPOS"},
             {INSFlag::DOPPLER_VELOCITY, "DOPPLER_VELOCITY"},
             {INSFlag::SINGLE,           "SINGLE"},
             {INSFlag::PSRDIFT,          "PSRDIFT"},
             {INSFlag::SBAS,             "SBAS"},
             {INSFlag::L1_FLOAT,         "L1_FLOAT"},
             {INSFlag::IONOFREE_FLOAT,   "IONOFREE_FLOAT"},
             {INSFlag::NARROW_FLOAT,     "NARROW_FLOAT"},
             {INSFlag::L1_INT,           "L1_INT"},
             {INSFlag::WIDE_INT,         "WIDE_INT"},
             {INSFlag::NARROW_INT,       "NARROW_INT"}};

        /**
         * @brief INS 数据处理器
         */
        class INSHandler : public SensorHandler<in2ulv_msgs::INSStdMsgConstPtr>
        {
        public:
            typedef std::unique_ptr<INSHandler> Ptr;

            /**
             * @brief INS 数据处理器构造函数
             * @details INS 接收不需要配置什么参数
             */
            INSHandler();

            /// @brief 父类虚函数，设置传感器处理类的 ROS 消息原始数据
            /// @param [in] data ROS 消息数据 ConstPtr 类型
            void SetData(const in2ulv_msgs::INSStdMsgConstPtr& data) final;

            /**
             * @brief 获取 GNSS 位置标志位
             * @return INSFlag 枚举类型
             */
            const INSFlag& GetGNSSPositionFlag() const;

            /**
             * @brief 获取 GNSS 航向标志位
             * @return INSFlag 枚举类型
             */
            const INSFlag& GetGNSSHeadingFlag() const;

            /**
             * @brief 获取 GNSS 收星数
             * @return space vehicle 数
             */
            const int& GetGNSSNumSV() const;

        protected:
            /** @brief 父类虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的位姿观测
             * @param [out] pose_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。成功的话才能使用 GetMeasurement 来获取结果；失败的话则观测量可能无效，则通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessPose(Measurement::Ptr& pose_measurement, const in2ulv_msgs::INSStdMsgConstPtr& sensor_data_ptr,
                             const Eigen::Isometry3d& pose_estimate = Eigen::Isometry3d::Identity()) final;

            /** @brief 父类虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的速度观测
             * @param [out] pose_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessTwist(Measurement::Ptr& twist_measurement, const in2ulv_msgs::INSStdMsgConstPtr& sensor_data_ptr,
                              const Eigen::Isometry3d& pose_estimate) final;

        private:
            /// @brief GNSS 位置标志位
            INSFlag gnss_position_flag_;

            /// @brief GNSS 航向标志位
            INSFlag gnss_heading_flag_;

            /// @brief GNSS 收星数
            int gnss_num_sv_;
        };
    }
}

#endif //SRC_INS_HANDLER_H
