/**
 * @file sensor_handler.hpp
 * @brief 传感器处理程序模板类
 * @details 对接 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型，同时记录转换的详细信息
 * @author Beta-Tao
 * @date 2022-05-08
 */

#ifndef SRC_SENSOR_HANDLER_HPP
#define SRC_SENSOR_HANDLER_HPP

#include <memory>
#include <string>
#include <unordered_map>
#include <mutex>
#include <atomic>

#include <ros/ros.h>

#include <Eigen/Core>

#include "Kalman_Filter_Library/filter_base.h"
#include "Kalman_Filter_Library/pose_system_common.h"

using namespace KalmanFilter;

namespace inin
{
    namespace in2ulv_localization
    {
        /**
         * @brief 传感器处理程序模板类
         * @details 其中包含很多可能被重载的数据处理方法，以及不需要被重载的数据处理记录方法
         * @tparam T 传感器处理程序对应的 ROS 消息类型 ConstPtr 类型
         */
        template<typename T>
        class SensorHandler
        {
        public:
            /**
             * @brief SensorHandler 构造函数
             * @param [in] sensor_name 传感器名称
             */
            explicit SensorHandler(std::string sensor_name) :
                sensor_name_(std::move(sensor_name)),
                sensor_data_ptr_(nullptr)
            {
                /* 预分配空间 */
                latest_measurement_map_[PoseSystem::Pose] = nullptr;
                latest_measurement_map_[PoseSystem::Twist] = nullptr;
                latest_measurement_map_[PoseSystem::Acceleration] = nullptr;
                previous_measurement_map_ = latest_measurement_map_;

                /* 初始化处理标志位 */
                latest_process_status_map_[PoseSystem::Pose] = false;
                latest_process_status_map_[PoseSystem::Twist] = false;
                latest_process_status_map_[PoseSystem::Acceleration] = false;

                ROS_INFO_STREAM("[Localization] Construct sensor name: " << sensor_name_);
            }

            virtual ~SensorHandler() = default;

            /**
             * @brief 虚函数，设置传感器处理类的 ROS 消息原始数据
             * @param [in] sensor_data_ptr ROS 消息数据 ConstPtr 类型
             */
            virtual void SetData(const T& sensor_data_ptr)
            {
                std::lock_guard<std::mutex> lock_guard(sensor_data_mutex_);
                sensor_data_ptr_ = sensor_data_ptr;
            }

            /**
             * @brief 获取最近的传感器数据
             * @return 最近的 ROS 消息原始数据，ConstPtr 类型
             */
            T& GetData()
            {
                std::lock_guard<std::mutex> lock_guard(sensor_data_mutex_);
                return sensor_data_ptr_;
            }

            /**
             * @brief 获取最新的传感器数据时间
             * @details 外部调用，添加锁保证线程安全
             */
            double GetLatestDataTime()
            {
                std::lock_guard<std::mutex> lock_guard(sensor_data_mutex_);
                return sensor_data_ptr_ == nullptr ? 0.0 : sensor_data_ptr_->header.stamp.toSec();
            }

            /**
             * @brief 传感器处理 ROS 消息类型的总函数
             * @details 该函数中会判断是否已经存在和当前传感器数据帧同时刻的观测量，并且会暂存历史结果
             * @param [out] measurement 观测结果，如果处理失败则返回 nullptr
             * @param [in] measurement_type 观测量类型 Pose, Twist or Acceleration
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用。默认为单位阵
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessData(Measurement::Ptr& measurement, PoseSystem::MeasurementType measurement_type,
                             const Eigen::Isometry3d& pose_estimate = Eigen::Isometry3d::Identity())
            {
                /* 获取传感器数据 */
                auto sensor_data_ptr = GetData();

                /* 判断传感器数据是否有效 */
                if (sensor_data_ptr == nullptr)
                {
                    SetProcessVerbose("Haven't receive the first " + sensor_name_ + " data.");
                    return false;
                }

                /* 用时间戳简单判断一下时间戳是否存在，存在就直接返回结果 */
                {
                    std::lock_guard<std::mutex> lock_guard(measurement_mutex);
                    if (latest_measurement_map_[measurement_type] != nullptr &&
                        sensor_data_ptr->header.stamp.toSec() == latest_measurement_map_[measurement_type]->time_)
                    {
                        measurement = latest_measurement_map_[measurement_type];
                        return true;
                    }
                }

                /* 处理各种观测结果 */
                bool success;
                switch (measurement_type)
                {
                    case PoseSystem::Pose:
                        success = ProcessPose(measurement, sensor_data_ptr, pose_estimate);
                        break;
                    case PoseSystem::Twist:
                        success = ProcessTwist(measurement, sensor_data_ptr, pose_estimate);
                        break;
                    case PoseSystem::Acceleration:
                        success = ProcessAcceleration(measurement, sensor_data_ptr, pose_estimate);
                        break;
                    default:
                        return false;
                }

                /* 记录历史结果 */
                if (success)
                {
                    std::lock_guard<std::mutex> lock_guard(measurement_mutex);
                    previous_measurement_map_[measurement_type] = latest_measurement_map_[measurement_type];
                    latest_measurement_map_[measurement_type] = measurement;
                }
                else
                {
                    /* 失败则将当前观测结果置空 */
                    measurement = nullptr;
                }

                /* 记录处理成功与否 */
                {
                    std::lock_guard<std::mutex> lock_guard(process_success_mutex_);
                    latest_process_status_map_[measurement_type] = success;
                }

                return success;
            }

            /**
             * @brief 获取最近的观测结果
             * @param [in] measurement_type 观测量类型 Pose, Twist or Acceleration
             */
            Measurement::Ptr GetLatestMeasurement(PoseSystem::MeasurementType measurement_type)
            {
                std::lock_guard<std::mutex> lock_guard(measurement_mutex);
                return latest_measurement_map_[measurement_type];
            }

            /**
             * @brief 获取最近的处理状态
             * @param [in] measurement_type 观测量类型 Pose, Twist or Acceleration
             * @return true 处理成功
             * @return false 处理错误
             */
            bool GetLatestProcessStatus(PoseSystem::MeasurementType measurement_type)
            {
                std::lock_guard<std::mutex> lock_guard(process_success_mutex_);
                return latest_process_status_map_[measurement_type];
            }

            /**
             * @brief 获取最新的 ROS 消息处理结果
             * @param [out] error_info 错误反馈
             */
            std::string& GetProcessVerbose()
            {
                std::lock_guard<std::mutex> lock_guard(error_info_mutex_);
                return error_info_;
            }

            /**
             * @brief 获取传感器名称
             */
            std::string& GetSensorName()
            {
                return sensor_name_;
            }

        protected:
            /**
             * @brief 此为所有 ProcessData 函数中将错误反馈存入 error_info_ 的方法
             * @details 添加锁
             * @param [in] error_info 错误反馈
             */
            void SetProcessVerbose(const std::string& error_info)
            {
                std::lock_guard<std::mutex> lock_guard(error_info_mutex_);
                error_info_ = error_info;
            }

            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的位姿观测
             * @param [out] pose_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            virtual bool ProcessPose(Measurement::Ptr& pose_measurement, const T& sensor_data_ptr,
                                     const Eigen::Isometry3d& pose_estimate)
            {
                pose_measurement = nullptr;
                ROS_ERROR_STREAM("[Localization] Not support for processing " << sensor_name_ << " data as pose measurement");
                return false;
            }

            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的速度观测
             * @param [out] twist_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            virtual bool ProcessTwist(Measurement::Ptr& twist_measurement, const T& sensor_data_ptr,
                                      const Eigen::Isometry3d& pose_estimate)
            {
                twist_measurement = nullptr;
                ROS_ERROR_STREAM("[Localization] Not support for processing " << sensor_name_ << " data as twist measurement");
                return false;
            }

            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的加速度观测
             * @param [out] acceleration_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            virtual bool ProcessAcceleration(Measurement::Ptr& acceleration_measurement, const T& sensor_data_ptr,
                                             const Eigen::Isometry3d& pose_estimate)
            {
                acceleration_measurement = nullptr;
                ROS_ERROR_STREAM("[Localization] Not support for processing " << sensor_name_ << " data as acceleration measurement");
                return false;
            }

            /**
             * @brief 获取上一次的观测结果
             * @param [in] measurement_type 观测量类型 Pose, Twist or Acceleration
             */
            Measurement::Ptr GetPreviousMeasurement(PoseSystem::MeasurementType measurement_type)
            {
                std::lock_guard<std::mutex> lock_guard(measurement_mutex);
                return previous_measurement_map_[measurement_type];
            }

            /// @brief 传感器名称
            std::string sensor_name_;

            /// @brief 传感器的原始数据，ConstPtr 类型
            T sensor_data_ptr_;

            /// @brief 传感器原始数据的锁
            std::mutex sensor_data_mutex_;

        private:
            /// @brief ProcessData 方法中可能的错误反馈
            std::string error_info_;

            /// @brief 错误反馈的锁
            std::mutex error_info_mutex_;

            /// @brief 传感器对应观测量的最近一次处理结果
            std::unordered_map<PoseSystem::MeasurementType, Measurement::Ptr> latest_measurement_map_;

            /// @brief 传感器对应的上一次观测量
            std::unordered_map<PoseSystem::MeasurementType, Measurement::Ptr> previous_measurement_map_;

            /// @brief 观测结果的锁
            std::mutex measurement_mutex;

            /// @brief 传感器对应观测量的最近一次处理成功与否标志位
            std::unordered_map<PoseSystem::MeasurementType, bool> latest_process_status_map_;

            /// @brief 处理成功与否标志位的锁
            std::mutex process_success_mutex_;
        };
    } // inin
} // in2ulv_localization

#endif //SRC_SENSOR_HANDLER_HPP
