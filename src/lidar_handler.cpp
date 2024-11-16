/**
 * @file lidar_handler.cpp
 * @brief 处理激光雷达的点云滤波和匹配问题
 * @details 主要使用 pcl 库来处理点云
 * @author Beta-Tao
 * @date 2022-04-07
 */

#include "in2ulv_localization/lidar_handler.h"

namespace inin
{
    namespace in2ulv_localization
    {
        LidarHandler::LidarHandler(const std::string& pcd_path, const float& leaf_size,
                                   const float& resolution, const double& epsilon,
                                   const int& max_iterations, const double& step_size,
                                   const Eigen::Isometry3d& transform_LIDARtoBASELINK,
                                   const Eigen::Isometry3d& transform_PCMtoUTM) :
            SensorHandler<sensor_msgs::PointCloud2ConstPtr>("lidar"),
            global_point_cloud_map_(new pcl::PointCloud<pcl::PointXYZ>),
            global_point_cloud_map_filtered_(new pcl::PointCloud<pcl::PointXYZ>),
            local_point_cloud_map_filtered_(new pcl::PointCloud<pcl::PointXYZ>),
            cur_point_cloud_scan_(new pcl::PointCloud<pcl::PointXYZ>),
            cur_point_cloud_scan_filtered_(new pcl::PointCloud<pcl::PointXYZ>),
            local_cur_point_cloud_scan_filtered_(new pcl::PointCloud<pcl::PointXYZ>),
            local_cur_point_cloud_scan_aligned_(new pcl::PointCloud<pcl::PointXYZ>),
            transform_LIDARtoBASELINK_(transform_LIDARtoBASELINK),
            transform_PCMtoUTM_(transform_PCMtoUTM)
        {
            if (pcd_path.empty())
            {
                ROS_FATAL_STREAM("[Localization] PCD file path is empty.");   // 导致崩溃的错误
                return;
            }

            pcl::io::loadPCDFile<pcl::PointXYZ>(pcd_path, *global_point_cloud_map_);

            if (global_point_cloud_map_->empty())
            {
                ROS_FATAL_STREAM("[Localization] PCD file at " << pcd_path << " is empty.");   // 导致崩溃的错误
                return;
            }
            else
            {
                ROS_INFO_STREAM("[Localization] Get point cloud map complete.");
            }

            /* 配置点云降采样器和 NDT 匹配算法 */
            ConfigVoxelFilter(leaf_size);
            ConfigNDT(float(resolution), epsilon, max_iterations, step_size);
            ROS_INFO_STREAM("[Localization] Config LidarHandler complete.");

            /* 对原始点云进行滤波 */
            voxel_filter_.setInputCloud(global_point_cloud_map_);
            voxel_filter_.filter(*global_point_cloud_map_filtered_);
            ROS_INFO_STREAM("[Localization] Downsample global point cloud complete.");
        }

        void LidarHandler::ConfigVoxelFilter(const float& leaf_size)
        {
            voxel_filter_.setLeafSize(leaf_size, leaf_size, leaf_size);
        }

        void LidarHandler::ConfigNDT(const float& resolution, const double& epsilon, const int& max_iterations,
                                     const double& step_size)
        {
            /* ndt-omp 中参数 */
            ndt_omp_ptr_.setNumThreads(omp_get_max_threads());
            ndt_omp_ptr_.setNeighborhoodSearchMethod(pclomp::DIRECT7);
//            ndt_omp_ptr_.setNeighborhoodSearchMethod(pclomp::KDTREE);

            /* ndt 中参数 */
            ndt_omp_ptr_.setResolution(resolution);
            ndt_omp_ptr_.setTransformationEpsilon(epsilon);
            ndt_omp_ptr_.setMaximumIterations(max_iterations);
            ndt_omp_ptr_.setStepSize(step_size);
        }

        pcl::PointCloud<pcl::PointXYZ>::Ptr LidarHandler::GetGlobalPointCloudMapFiltered() const
        {
            return global_point_cloud_map_filtered_;
        }

        pcl::PointCloud<pcl::PointXYZ>::Ptr LidarHandler::GetLocalPointCloudMapFiltered() const
        {
            return local_point_cloud_map_filtered_;
        }

        pcl::PointCloud<pcl::PointXYZ>::Ptr LidarHandler::GetAlignedPointCloud() const
        {
            return local_cur_point_cloud_scan_aligned_;
        }

        pcl::PointCloud<pcl::PointXYZ>::Ptr LidarHandler::GetCurrentPointCloudScan() const
        {
            return cur_point_cloud_scan_;
        }

        void LidarHandler::Cylinder(const pcl::PointCloud<pcl::PointXYZ>::Ptr& input,
                                    pcl::PointCloud<pcl::PointXYZ>::Ptr& output,
                                    const double& center_x, const double& center_y,
                                    const double& high_z_limit, const double& low_z_limit, const double& radius)
        {
            pcl::PointIndices::Ptr keep_point_indices(new pcl::PointIndices());
            pcl::ExtractIndices<pcl::PointXYZ> extractor(true);

            /* 简单的距离判断 */
            /* 记录超过范围的点的索引值 */
            for (int i = 0; i < input->size(); i++)
            {
                auto& point = (*input)[i];
                if ((std::pow(point.x - center_x, 2) + std::pow(point.y - center_y, 2)) < std::pow(radius, 2) &&
                    point.z < high_z_limit && point.z > low_z_limit)
                {
                    keep_point_indices->indices.push_back(i);
                }
            }

            /* 利用索引值去除点云 */
            extractor.setInputCloud(input);
            extractor.setIndices(keep_point_indices);
            extractor.filter(*output);
        }

        bool LidarHandler::ProcessPose(Measurement::Ptr& pose_measurement,
                                       const sensor_msgs::PointCloud2ConstPtr& sensor_data_ptr,
                                       const Eigen::Isometry3d& pose_estimate)
        {
            double align_time, pre_time, convert_time;
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now(), time_end;

            /* 获取点云并处理 */
            pcl::fromROSMsg(*sensor_data_ptr, *cur_point_cloud_scan_);
            std::vector<int> nan_indices;
            pcl::removeNaNFromPointCloud(*cur_point_cloud_scan_, *cur_point_cloud_scan_, nan_indices);
            /* 对当前点云进行降采样处理 */
            voxel_filter_.setInputCloud(cur_point_cloud_scan_);
            voxel_filter_.filter(*cur_point_cloud_scan_filtered_);

            /* 利用当前位姿的估计值来裁剪全局地图，以缩小匹配区域 */
            auto pcm_pose_estimate = transform_PCMtoUTM_.inverse() * pose_estimate;
            Cylinder(global_point_cloud_map_filtered_, local_point_cloud_map_filtered_,
                     pcm_pose_estimate.translation().x(), pcm_pose_estimate.translation().y(),
                     7, -7, 30);
            /* 由于各种原因，可能导致此时用于 NDT 匹配的局部点云地图点数出现问题，故此处检查裁剪后的局部地图中点的数量 */
            if (local_point_cloud_map_filtered_->size() <= 10000)
            {
                /* 点数不足，无法进行后续匹配并报错 */
                SetProcessVerbose("No enough point (<=10000 points) in current position");
                return false;
            }
            /* 这里裁剪是在雷达坐标系下的裁剪，不是很准确，但是这边再转换一次感觉没有必要 */
            Cylinder(cur_point_cloud_scan_filtered_, local_cur_point_cloud_scan_filtered_,
                     0.0, 0.0, 7, -7, 30);

            /* 计算预处理时间 */
            time_end = std::chrono::steady_clock::now();
            pre_time =
                std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count();

            /* 考虑激光雷达外参 */
            Eigen::Isometry3d point_cloud_pose_guess = pcm_pose_estimate * transform_LIDARtoBASELINK_;
            /* NDT 匹配 */
            ndt_omp_ptr_.setInputSource(local_cur_point_cloud_scan_filtered_);
            ndt_omp_ptr_.setInputTarget(local_point_cloud_map_filtered_);
            /* 注意这里需要强制类型转换一下，否则 Eigen 会在编译的时候报错 */
            ndt_omp_ptr_.align(*local_cur_point_cloud_scan_aligned_, point_cloud_pose_guess.matrix().cast<float>());

            /* 计算 align 时间 */
            time_end = std::chrono::steady_clock::now();
            align_time =
                std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count() -
                pre_time;

            /* 获取 NDT 评价指标 */
            /* 注意， ndt 计算 score 比较耗时间 */
            ndt_fitness_score_ = ndt_omp_ptr_.getFitnessScore();
            ndt_transform_probability_ = ndt_omp_ptr_.getTransformationProbability();

            /* 获取观测结果 */
            pose_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            pose_measurement->topic_name_ = sensor_name_ + "_pose";
            pose_measurement->update_vector_.resize(PoseSystem::STATE_SIZE, static_cast<int>(false));
            /* 激光雷达观测结果是位姿 */
            for (int i = PoseSystem::POSE_OFFSET; i < PoseSystem::POSE_SIZE; i++)
            {
                pose_measurement->update_vector_[i] = static_cast<int>(true);
            }
            /* 设置观测结果和方差 */
            /* 由于 measurement_ 直接初始化了，下面的赋值方法可以少一步拷贝操作，减少耗时 */
            pose_measurement->measurement_.setZero(PoseSystem::STATE_SIZE);
            Eigen::Isometry3d pose = transform_PCMtoUTM_ * // transform_LIDARtoMAP
                                     Eigen::Isometry3d(ndt_omp_ptr_.getFinalTransformation().cast<double>()) *
                                     transform_LIDARtoBASELINK_.inverse();  // transform_BASELINKtoLIDAR

            /* 这里使用 pcl 的方法来进行转换，该方法返回的 pitch 角度范围为[-pi/2, pi/2](asin结果)，而另外两个角均为 atan2 结果 */
            /* 不使用 Eigen 的欧拉角转换是因为 Eigen 的 eulerAngles 方法返回的朝向角是 [0, pi] */
            pcl::getTranslationAndEulerAngles(pose,
                                              pose_measurement->measurement_[PoseSystem::StateMemberX],
                                              pose_measurement->measurement_[PoseSystem::StateMemberY],
                                              pose_measurement->measurement_[PoseSystem::StateMemberZ],
                                              pose_measurement->measurement_[PoseSystem::StateMemberRoll],
                                              pose_measurement->measurement_[PoseSystem::StateMemberPitch],
                                              pose_measurement->measurement_[PoseSystem::StateMemberYaw]);
            pose_measurement->covariance_ = Eigen::MatrixXd(PoseSystem::STATE_SIZE, PoseSystem::STATE_SIZE).setIdentity();
            pose_measurement->covariance_.block<PoseSystem::POSITION_SIZE, PoseSystem::POSITION_SIZE>
                (PoseSystem::StateMemberX, PoseSystem::StateMemberX) *= ndt_fitness_score_ * 2;
            pose_measurement->covariance_.block<PoseSystem::ORIENTATION_SIZE, PoseSystem::ORIENTATION_SIZE>
                (PoseSystem::StateMemberRoll, PoseSystem::StateMemberRoll) *= ndt_fitness_score_ * 0.2;
            pose_measurement->mahalanobis_thresh_ = 3;

            /* 计算转换时间 */
            time_end = std::chrono::steady_clock::now();
            convert_time =
                std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count() -
                pre_time - align_time;

            ROS_WARN_STREAM("[Localization] NDT matching detail: \n"
                                << "  pre time: " << pre_time << " ms\n"
                                << "  align time: " << align_time << " ms\n"
                                << "  convert time: " << convert_time << " ms\n"
                                << "  cost iteration: " << ndt_omp_ptr_.getFinalNumIteration() << "\n"
                                << "  fitness score: " << ndt_fitness_score_ << "\n"
                                << "  trans probability: " << ndt_transform_probability_ << "\n");

            return true;
        }

        const double& LidarHandler::GetFitnessScore() const
        {
            return ndt_fitness_score_;
        }

        const double& LidarHandler::GetTransformProbability() const
        {
            return ndt_transform_probability_;
        }
    }
}
