/**
 * @file localization_node.h
 * @brief ULV-v2项目定位功能主节点
 * @details 包含定位节点相关的订阅器，发布器，传感器回调函数，传感器数据处理算法和滤波算法
 * @author Beta-Tao
 * @date 2022-04-05
 */

#ifndef SRC_LOCALIZATION_NODE_H
#define SRC_LOCALIZATION_NODE_H

#include <ros/ros.h>
#include <ros/package.h>
#include <std_msgs/Float32.h>
#include <std_msgs/String.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/Imu.h>
#include <nav_msgs/Path.h>
#include <std_srvs/Trigger.h>
#include <gps_common/conversions.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/static_transform_broadcaster.h>
#include <tf2_eigen/tf2_eigen.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/TwistStamped.h>
#include <XmlRpcValue.h>

#include <pclomp/ndt_omp.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include <string>
#include <cstdlib>
#include <chrono>
#include <deque>
#include <queue>
#include <mutex>
#include <atomic>
#include <thread>

#include "in2ulv_common/module_type.h"
#include "in2ulv_common/error_code.h"
#include "in2ulv_common/action_type.h"
#include "in2ulv_common/action_status.h"
#include "in2ulv_msgs/INSStdMsg.h"
#include "in2ulv_msgs/LocalizationInfo.h"
#include "in2ulv_msgs/ModuleInfo.h"
#include "in2ulv_msgs/ActionType.h"
#include "in2ulv_localization/lidar_handler.h"
#include "in2ulv_localization/ins_handler.h"
#include "in2ulv_localization/odometry_handler.h"
#include "in2ulv_localization/imu_handler.h"

#include "Kalman_Filter_Library/ekf_pose_system.h"

namespace inin
{
    namespace in2ulv_localization
    {
        class LocalizationNode
        {
        public:
            EIGEN_MAKE_ALIGNED_OPERATOR_NEW

            typedef std::priority_queue<KalmanFilter::Measurement::Ptr, std::vector<KalmanFilter::Measurement::Ptr>,
                                        KalmanFilter::Measurement> MeasurementPriorityQueue;

            /**
             * @brief 定位节点构造函数
             * @param [in] node_handle 节点句柄
             */
            LocalizationNode();

            /**
             * @brief 周期性更新定位节点滤波器的定时器回调函数
             * @param [in] timer_event 触发定时器的事件
             */
            void PeriodicUpdateTimerCallback(const ros::TimerEvent& timer_event);

            /**
             * @brief 绑定在 INS 消息订阅器上的回调函数
             * @param [in] ins_std_msg_const_ptr INS 观测结果
             */
            void INSCallback(const in2ulv_msgs::INSStdMsgConstPtr& ins_std_msg_const_ptr);

            /**
             * @brief 绑定在 IMU 消息订阅器上的回调函数
             * @param [in] imu_const_ptr IMU 观测结果
             */
            void IMUCallback(const sensor_msgs::ImuConstPtr& imu_const_ptr);

            /**
             * @brief 绑定在轮式里程计消息订阅器上的回调函数
             * @param [in] odometry_const_ptr 轮式里程计观测结果
             */
            void OdometryCallback(const nav_msgs::OdometryConstPtr& odometry_const_ptr);

            /**
             * @brief 绑定在激光雷达消息订阅器上的回调函数
             * @param [in] point_cloud_const_ptr 激光雷达观测结果
             */
            void LidarCallback(const sensor_msgs::PointCloud2ConstPtr& point_cloud_const_ptr);

            /**
             * @brief 绑定在决策消息订阅器上的回调函数
             * @param [in] action_type_const_ptr 决策信息
             */
            void ActionTypeCallback(const in2ulv_msgs::ActionTypeConstPtr& action_type_const_ptr);

            /**
             * @brief 绑定在发送全局地图服务器上的回调函数
             * @param[in] request Trigger::Request 空内容
             * @param[out] response Trigger::Response 返回一个 bool 值和一个 string
             * @note std_srvs::Trigger: http://docs.ros.org/en/api/std_srvs/html/srv/Trigger.html
             */
            bool ShowGlobalPointCloudMapCallback(std_srvs::Trigger::Request& request,
                                                 std_srvs::Trigger::Response& response);

            /**
             * @brief 定位节点主循环，用于检查各传感器工作状态并上报错误
             */
            void LoopRun();

            /**
             * @brief 关闭定位节点主循环
             */
            void ShutDownMainThread();

        private:
            /**
             * @brief 将 UTM 下位姿观测结果转换到目标坐标系
             * @param[in] pose_vector UTM 下包含位姿向量[x, y, z, roll, pitch, yaw]
             * @param[in] transform 从 UTM 坐标系到目标坐标系的位姿变换矩阵
             * @retval 目标坐标系下位姿变量的引用
             */
            static Eigen::Isometry3d& TransformPoseVector(const Eigen::VectorXd& pose_vector,
                                                          const Eigen::Isometry3d& transform);

            /**
             * @brief 清空观测量优先队列
             */
            void ClearMeasurementPriorityQueue();

            /**
             * @brief 恢复历史数据
             * @details 利用 measurement_history_ 和 filter_state_history_ 恢复历史观测和状态
             * @param[in] time 需要返回的时间点
             * @param[in] measurement_queue 当前观测值队列
             */
            void RevertHistory(const double& time,
                               std::priority_queue<KalmanFilter::Measurement::Ptr,
                                                   std::vector<KalmanFilter::Measurement::Ptr>,
                                                   KalmanFilter::Measurement>& measurement_queue);

            /**
             * @brief 清除历史数据
             * @details 清除 measurement_history_ 和 filter_state_history_ 的历史数据
             * @param[in] time 清除时间点，该时间点之前的数据将会被丢弃
             */
            void ClearExpiredHistory(const double& time);

            /**
             * @brief 利用滤波器当前状态量向规划发布定位结果
             */
            void PublishLocalizationInfo();

            /**
             * @brief 检查传感器数据是否滞后及是否收到第一帧
             * @throw in2ulv_msgs::ModuleInfo 存在传感器滞后时，抛出的错误信息和错误码
             */
            void CheckSensorDataLag();

            /**
             * @brief 检查传感器处理是否正常
             * @throw in2ulv_msgs::ModuleInfo 存在传感器处理错误时，抛出的错误信息和错误码
             */
            void CheckSensorProcessStatus();

            /**
             * @brief 获取初始位姿
             * @param [out] init_pose_measurement 位姿观测量
             * @throw in2ulv_msgs::ModuleInfo 存在初始化错误时，抛出的错误信息和错误码
             */
            void GetInitialPose(Measurement::Ptr& init_pose_measurement);

            /// @brief ROS 的节点句柄
            /// @details 用于订阅和发布话题或服务
            ros::NodeHandle nh_;

            /// @brief 周期性更新定位节点的定时器
            ros::Timer period_update_timer_;

            /// @brief INS 话题订阅器
            ros::Subscriber ins_sub_;

            /// @brief IMU 话题订阅器
            ros::Subscriber imu_sub_;

            /// @brief 轮式里程计话题订阅器
            ros::Subscriber odometry_sub_;

            /// @brief 激光雷达话题订阅器
            ros::Subscriber lidar_sub_;

            /// @brief 决策发布的动作类型订阅器
            ros::Subscriber action_type_sub_;

            /// @brief 全局点云地图发布器
            /// @details 由于发布全局点云地图耗时且占带宽，故设置了一个服务器来发送该点云地图
            /// @details 用于 rviz 调试
            ros::Publisher global_point_cloud_map_pub_;

            /// @brief 局部点云地图发布器
            /// @details 用于在 rviz 上查看 NDT 匹配时所用子图
            /// @details 用于 rviz 调试
            ros::Publisher local_point_cloud_map_pub_;

            /// @brief NDT 匹配后的点云发布
            /// @details 用于在 rviz 上查看 NDT 匹配结果
            /// @details 用于 rviz 调试
            ros::Publisher ndt_aligned_point_cloud_pub_;

            /// @brief 当前激光雷达扫描结果
            /// @brief 用于检查 INS 当前位姿和点云地图的一致性
            /// @details 用于 rviz 调试
            ros::Publisher cur_point_cloud_scan_pub_;

            /// @brief 修改后的轮式里程计信息发布
            /// @details 发布的不是 Odometry 类型，而是 Marker 类型
            /// @details 用于 rviz 调试
            ros::Publisher odometry_pub_;

            /// @brief 修改后的 IMU 信息发布
            /// @details 用于 rviz 调试
            ros::Publisher imu_pub_;

            /// @brief 定位位姿轨迹发布器
            /// @details 用于 rviz 调试
            ros::Publisher ekf_pose_path_pub_;

            /// @brief 定位速度发布器
            /// @details 用于 rviz 调试
            ros::Publisher ekf_twist_pub_;

            /// @brief NDT 匹配结果轨迹发布器
            /// @details 用于 rviz 调试
            ros::Publisher ndt_pose_path_pub_;

            /// @brief NDT 匹配时间发布器
            /// @details 用于 rviz 调试
            ros::Publisher ndt_matching_time_pub_;

            /// @brief EKF 滤波更新时间发布器
            /// @details 用于 rviz 调试
            ros::Publisher ekf_update_time_pub_;

            /// @brief NDT 匹配分数发布
            /// @details 用于 rviz 调试
            ros::Publisher ndt_score_pub_;

            /// @brief NDT 可信度发布
            /// @details 用于 rviz 调试
            ros::Publisher ndt_probability_pub_;

            /// @brief INS 相关状态发布
            /// @details 用于 rviz 调试
            ros::Publisher ins_status_pub_;

            /// @brief 定位位姿发布器（LLA 坐标）
            ros::Publisher lla_localization_info_pub_;

            /// @brief 定位位姿发布器（UTM 坐标）
            ros::Publisher utm_localization_info_pub_;

            /// @brief 定位位姿发布器（MAP 坐标）
            ros::Publisher map_localization_info_pub_;

            /// @brief 定位模块状态发布器
            /// @details 用于发布给决策
            ros::Publisher module_info_pub_;

            /// @brief 为 rviz 显示全局点云地图的服务器
            ros::ServiceServer show_global_point_cloud_map_srv_;

            /// @brief 发布 tf 位姿变换的发布器
            tf2_ros::TransformBroadcaster tf_pub_;

            /// @brief 发布 tf 静态变换的发布器
            /// @details 主要用于发布各传感器和车体之间的位姿变换
            tf2_ros::StaticTransformBroadcaster static_tf_pub_;

            /// @brief 定位位姿轨迹
            /// @brief 用于 rviz 调试
            std::deque<geometry_msgs::PoseStamped> ekf_pose_path_deque_;

            /// @brief NDT 位姿轨迹
            /// @brief 用于 rviz 调试
            std::deque<geometry_msgs::PoseStamped> ndt_pose_path_deque_;

            /// @brief 点云地图坐标系名称
            std::string pc_map_frame_;

            /// @brief INS 坐标系名称
            std::string ins_frame_;

            /// @brief 激光雷达坐标系名称
            std::string lidar_frame_;

            /// @brief NDT 匹配坐标系名称
            std::string ndt_frame_;

            /// @brief 滤波后位姿坐标系名称
            std::string ekf_pose_frame_;

            /// @brief 从点云地图到 UTM 坐标系的位姿变换，即点云地图在 UTM 坐标系下的位姿
            Eigen::Isometry3d transform_PCMtoUTM_;

            /// @brief 从激光雷达到载体坐标系的位姿变换
            Eigen::Isometry3d transform_LIDARtoBASELINK_;

            /// @brief 激光雷达数据处理器
            LidarHandler::Ptr lidar_handler_ptr_;

            /// @brief INS 数据处理器
            INSHandler::Ptr ins_handler_ptr_;

            /// @brief 轮式里程计处理器
            OdometryHandler::Ptr odometry_handler_ptr_;

            /// @brief IMU 数据处理器
            IMUHandler::Ptr imu_handler_ptr_;

            /// @brief EKF 滤波器
            KalmanFilter::EkfPoseSystem filter_;

            /// @brief 遵循时间顺序的状态量历史队列
            /// @details front() 代表更早的时间戳
            /// back() 代表更晚的时间戳
            std::deque<KalmanFilter::FilterState::Ptr> filter_state_history_;

            /// @brief 遵循时间顺序的观测量历史队列
            /// @details front() 代表更早的时间戳
            /// back() 代表更晚的时间戳
            std::deque<KalmanFilter::Measurement::Ptr> measurement_history_;

            /// @brief 遵循时间顺序的观测量优先队列
            /// @details 所有传感器输出的观测结果将在回调函数中插入该队列，该队列自动按照时间由旧到新排序
            /// @details 该队列中的所有内容会在 periodicUpdateTimerCallback 中全部处理完成
            MeasurementPriorityQueue measurement_priority_queue_;

            /// @brief 多线程中保护 measurement_priority_queue_ 安全的锁
            std::mutex measurement_mutex_;

            /// @brief 激光点云地图路径
            std::string pcd_path_;

            /// @brief 激光点云地图原点经度
            double pcd_origin_longitude_;

            /// @brief 激光点云地图原点纬度
            double pcd_origin_latitude_;

            /// @brief 激光点云地图原点高程
            double pcd_origin_altitude_;

            /// @brief 激光点云地图所在 UTM 区域
            std::string utm_zone_;

            /// @brief 点云降采样体素大小
            double leaf_size_;

            /// @brief NDT 体素结构的分辨率
            double resolution_;

            /// @brief 终止条件的最小转换差
            double epsilon_;

            /// @brief 最大迭代次数
            int max_iterations_;

            /// @brief 迭代步长
            double step_size_;

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

            /// @brief 定位结果输出频率
            int node_frequency_;

            /// @brief 激光雷达处理间隔
            int lidar_interval_;

            /// @brief 是否开启 rviz DEBUG 模式
            /// @details 注意调试模式下，各传感器输出需要从 UTM 坐标系转换至地图坐标系
            bool rviz_debug_;

            /// @brief 是否开启 ekf DEBUG 模式
            /// @details 该调试模式下会将 EKF 的中间计算结果写入 log 文件中
            bool ekf_debug_;

            /// @brief 是否使用 INS 进行初始化
            bool use_ins_init_;

            /// @brief 由外部提供的初始化默认位姿
            std::vector<Eigen::Isometry3d> default_init_poses_;

            /// @brief EKF LOG 日志输出流
            std::ofstream log_stream_;

            /// @brief 用于控制 INS 回调函数中 ROS_INFO 的频率
            /// @details 注意只在 INS 回调函数中进行修改
            int ins_callback_count_;

            /// @brief 用于控制 轮式里程计 回调函数中 ROS_INFO 的频率
            /// @details 注意只在 轮式里程计 回调函数中进行修改
            int odometry_callback_count_;

            /// @brief 用于控制 IMU 回调函数中 ROS_INFO 的频率
            /// @details 注意只在 IMU 回调函数中进行修改
            int imu_callback_count_;

            /// @brief 用于控制 Lidar 回调函数中对 Lidar 数据的处理频率
            /// @details 注意只在 Lidar 回调函数中进行修改
            int lidar_callback_count_;

            /// @brief 决策发布的动作类型
            std::atomic_int action_type_atomic_;

            /// @brief 定位节点主线程运行标志位，用于在 main 函数中对主线程进行关闭
            std::atomic_bool main_thread_run_flag_atomic_;
        };
    }
}

#endif //SRC_LOCALIZATION_NODE_H
