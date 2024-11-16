/**
 * @file lidar_handler.h
 * @brief 处理激光雷达的点云滤波和匹配问题
 * @details 主要使用 pcl 库来处理点云
 * @author Beta-Tao
 * @date 2022-04-07
 */

#ifndef SRC_LIDAR_HANDLER_H
#define SRC_LIDAR_HANDLER_H

#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>

#include <pclomp/ndt_omp.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/approximate_voxel_grid.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>
#include <pcl_conversions/pcl_conversions.h>

#include "Kalman_Filter_Library/filter_common.h"
#include "Kalman_Filter_Library/pose_system_common.h"

#include <omp.h>
#include <memory>
#include <vector>
#include <chrono>

#include "sensor_handler.hpp"

namespace inin
{
    namespace in2ulv_localization
    {
        /**
         * @brief 激光雷达数据处理类
         * @details 使用 pcl 库对激光雷达点云进行滤波和匹配
         */
        class LidarHandler : public SensorHandler<sensor_msgs::PointCloud2ConstPtr>
        {
        public:
            EIGEN_MAKE_ALIGNED_OPERATOR_NEW

            typedef std::unique_ptr<LidarHandler> Ptr;

            /**
             * @brief 激光雷达处理类构造函数
             * @details 获取全局点云地图、配置点云降采样器和 NDT 算法
             * @details NDT 匹配算法默认使用最大线程数和 pclomp::DIRECT7 近邻搜索方法
             * @param[in] pcd_path 全局点云图路径
             * @param[in] leaf_size 降采样正方体体素尺寸，单位为米(m)
             * @param[in] resolution NDT 体素结构的分辨率
             * @param[in] epsilon 终止条件的最小转换差
             * @param[in] max_iterations 最大迭代次数
             * @param[in] step_size 迭代步长
             * @param[in] transform_LIDARtoBASELINK 激光雷达外参
             * @param[in] transform_PCMtoUTM 点云地图位姿
             */
            LidarHandler(const std::string& pcd_path, const float& leaf_size,
                         const float& resolution, const double& epsilon,
                         const int& max_iterations, const double& step_size,
                         const Eigen::Isometry3d& transform_LIDARtoBASELINK,
                         const Eigen::Isometry3d& transform_PCMtoUTM);

            /**
             * @brief 配置点云降采样器
             * @param[in] leaf_size 降采样正方体体素尺寸，单位为米(m)
             */
            void ConfigVoxelFilter(const float& leaf_size);

            /**
             * @brief 配置NDT算法(omp 版本)
             * @details 默认使用最大线程数和 pclomp::DIRECT7 近邻搜索方法
             * @param[in] resolution NDT 体素结构的分辨率
             * @param[in] epsilon 终止条件的最小转换差
             * @param[in] max_iterations 最大迭代次数
             * @param[in] step_size 迭代步长
             */
            void ConfigNDT(const float& resolution, const double& epsilon,
                           const int& max_iterations, const double& step_size);

            /**
             * @brief 获取全局点云地图
             * @return 全局点云地图
             */
            pcl::PointCloud<pcl::PointXYZ>::Ptr GetGlobalPointCloudMapFiltered() const;

            /**
             * @brief 获取裁剪后的局部点云地图
             * @return 局部点云地图
             */
            pcl::PointCloud<pcl::PointXYZ>::Ptr GetLocalPointCloudMapFiltered() const;

            /**
             * @brief 获取匹配后的点云
             * @return 匹配后的点云
             */
            pcl::PointCloud<pcl::PointXYZ>::Ptr GetAlignedPointCloud() const;

            /**
             * @brief 获取当前扫描点云
             * @return 扫描点云
             */
            pcl::PointCloud<pcl::PointXYZ>::Ptr GetCurrentPointCloudScan() const;

            /**
             * @brief 获取 NDT 匹配的分数
             * @details 注意在 ProcessLidarData 后才是当前匹配的分数
             */
            const double& GetFitnessScore() const;

            /**
             * @brief 获取 NDT 匹配的变换概率
             * @details 注意在 ProcessLidarData 后才是当前匹配的变换概率
             */
            const double& GetTransformProbability() const;

        protected:
            /**
             * @brief 虚函数，处理 ROS 消息类型，将其转换为 KalmanFilter::Measurement 类型的位姿观测
             * @param [out] pose_measurement 位姿观测结果
             * @param [in] sensor_data_ptr ROS 消息数据，ConstPtr 类型
             * @param [in] pose_estimate 当前系统估计的位姿，可以不使用
             * @return 处理是否成功。失败的话可通过 GetProcessVerbose 来获取错误信息
             */
            bool ProcessPose(Measurement::Ptr& pose_measurement, const sensor_msgs::PointCloud2ConstPtr& sensor_data_ptr,
                             const Eigen::Isometry3d& pose_estimate) final;

        private:
            /**
             * @brief 取点云的圆柱形子点
             * @param[in] input 输入点云
             * @param[out] output 输出圆柱形点云
             * @param[in] center_x 圆柱形点云中心 x 坐标
             * @param[in] center_y 圆柱形点云中心 y 坐标
             * @param[in] high_z_limit 圆柱形点云的上半部分限制
             * @param[in] low_z_limit 圆柱形点云的下半部分限制
             * @param[in] radius 圆柱形点云半径
             */
            void Cylinder(const pcl::PointCloud<pcl::PointXYZ>::Ptr& input, pcl::PointCloud<pcl::PointXYZ>::Ptr& output,
                          const double& center_x, const double& center_y,
                          const double& high_z_limit, const double& low_z_limit, const double& radius);

            /// @brief 全局点云地图
            pcl::PointCloud<pcl::PointXYZ>::Ptr global_point_cloud_map_;

            /// @brief 全局点云地图降采样结果
            pcl::PointCloud<pcl::PointXYZ>::Ptr global_point_cloud_map_filtered_;

            /// @brief 局部点云地图降采样结果
            /// @details 实际用于 NDT 匹配的目标点云，为全局点云地图滤波结果裁剪后的结果
            pcl::PointCloud<pcl::PointXYZ>::Ptr local_point_cloud_map_filtered_;

            /// @brief 当前激光雷达采集点云
            pcl::PointCloud<pcl::PointXYZ>::Ptr cur_point_cloud_scan_;

            /// @brief 当前激光雷达采集点云降采样结果
            pcl::PointCloud<pcl::PointXYZ>::Ptr cur_point_cloud_scan_filtered_;

            /// @brief 局部当前激光雷达采集点云降采样结果
            /// @details 实际用于 NDT 匹配的输入点云
            pcl::PointCloud<pcl::PointXYZ>::Ptr local_cur_point_cloud_scan_filtered_;

            /// @brief 当前激光雷达采集点云 NDT 匹配对齐结果
            /// @details 为 local_cur_point_cloud_scan_filtered_ 对齐结果
            pcl::PointCloud<pcl::PointXYZ>::Ptr local_cur_point_cloud_scan_aligned_;

            /// @brief 点云降采样滤波器
            pcl::VoxelGrid<pcl::PointXYZ> voxel_filter_;

            /// @brief NDT 匹配算法(omp 版本)
            pclomp::NormalDistributionsTransform<pcl::PointXYZ, pcl::PointXYZ> ndt_omp_ptr_;

            /// @brief 激光雷达外参
            Eigen::Isometry3d transform_LIDARtoBASELINK_;

            /// @brief 点云地图在 UTM 坐标系的位姿
            Eigen::Isometry3d transform_PCMtoUTM_;

            /// @brief NDT 匹配的分数
            double ndt_fitness_score_;

            /// @brief NDT 匹配结果的概率
            double ndt_transform_probability_;
        };
    }
}

#endif //SRC_LIDAR_HANDLER_H
