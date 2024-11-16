/**
 * @file localization_node.cpp
 * @brief ULV-v2项目定位功能主节点
 * @details 包含定位节点相关的订阅器，发布器，传感器回调函数，传感器数据处理算法和滤波算法
 * @author Beta-Tao
 * @date 2022-04-05
 */

#include "in2ulv_localization/localization_node.h"

using namespace KalmanFilter;

namespace inin
{
    namespace in2ulv_localization
    {
        LocalizationNode::LocalizationNode() :
            nh_("~"),
            ins_callback_count_(0),
            odometry_callback_count_(0),
            imu_callback_count_(0),
            log_stream_(nullptr)
        {
            /* 设置调试模式 */
            if (nh_.getParam("rviz_debug", rviz_debug_))
            {
                if (rviz_debug_)
                {
                    /* 开启 rviz */
                    // std::stringstream command;
                    // command << "rviz -d "
                    //         << ros::package::getPath("in2ulv_localization") << "/rviz/localization_debug.rviz "
                    //         << "&";     // 命令最后包含一个 & 指令，让该指令立刻返回并执行后续程序。否则程序将卡在这里，直到rviz关闭并返回
                    // int return_type = std::system(command.str().c_str());
                    // ROS_WARN_STREAM("[Localization] Activate debug mode. Already open rviz");

                    /* 获取 rviz 显示时所需 frame 名称 */
                    if (nh_.getParam("pc_map_frame_id", pc_map_frame_) &&
                        nh_.getParam("ins_frame_id", ins_frame_) &&
                        nh_.getParam("lidar_frame_id", lidar_frame_) &&
                        nh_.getParam("ndt_frame_id", ndt_frame_) &&
                        nh_.getParam("ekf_pose_frame_id", ekf_pose_frame_))
                    {
                        ROS_INFO_STREAM("[Localization] Frame name load success." << "\n"
                                                                                  << "  Point cloud map frame id: "
                                                                                  << pc_map_frame_ << "\n"
                                                                                  << "  INS frame id: " << ins_frame_ << "\n"
                                                                                  << "  Lidar frame id: " << lidar_frame_ << "\n"
                                                                                  << "  NDT frame id: " << ndt_frame_ << "\n"
                                                                                  << "  Ekf pose frame id: " << ekf_pose_frame_);
                        ROS_WARN_STREAM("[Localization] Rviz fixed frame id should be: " << pc_map_frame_);
                    }
                    else
                    {
                        ROS_FATAL_STREAM("[Localization] Frame name was not found in full");
                    }

                    /* 开启 debug 模式需要的发布器 */
                    global_point_cloud_map_pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/Global_Point_Cloud_Map", 1);
                    local_point_cloud_map_pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/Local_Point_Cloud_Map", 1);
                    ndt_aligned_point_cloud_pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/Aligned_Lidar_Scan", 1);
                    cur_point_cloud_scan_pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/Current_Lidar_Scan", 1);
                    odometry_pub_ = nh_.advertise<visualization_msgs::Marker>("/Odometry_Linear_Velocity", 1);
                    imu_pub_ = nh_.advertise<sensor_msgs::Imu>("/IMU_Remove_Gravity", 1);
                    ndt_matching_time_pub_ = nh_.advertise<std_msgs::Float32>("/ndt_matching_time", 1);
                    ndt_score_pub_ = nh_.advertise<std_msgs::Float32>("/ndt_score", 1);
                    ndt_probability_pub_ = nh_.advertise<std_msgs::Float32>("/ndt_probability", 1);
                    ekf_update_time_pub_ = nh_.advertise<std_msgs::Float32>("/ekf_update_time", 1);
                    ins_status_pub_ = nh_.advertise<std_msgs::String>("/ins_status", 1);
                    ekf_pose_path_pub_ = nh_.advertise<nav_msgs::Path>("/ekf_pose", 1);
                    ekf_twist_pub_ = nh_.advertise<geometry_msgs::TwistStamped>("/ekf_twist", 1);
                    ndt_pose_path_pub_ = nh_.advertise<nav_msgs::Path>("/ndt_pose", 1);

                    /* 设置全局点云地图发送服务器 */
                    show_global_point_cloud_map_srv_ =
                        nh_.advertiseService("/Show_Global_Point_Cloud_Map",
                                             &LocalizationNode::ShowGlobalPointCloudMapCallback, this);
                }
            }
            else
            {
                ROS_WARN_STREAM("[Localization] Not activate debug mode\n");
            }

            /* 设置激光点云参数*/
            if (nh_.getParam("/common/pcd_path", pcd_path_) && nh_.getParam("leaf_size", leaf_size_) &&
                nh_.getParam("resolution", resolution_) && nh_.getParam("epsilon", epsilon_) &&
                nh_.getParam("max_iteration", max_iterations_) && nh_.getParam("step_size", step_size_) &&
                nh_.getParam("/common/map_origin_longitude", pcd_origin_longitude_) &&
                nh_.getParam("/common/map_origin_latitude", pcd_origin_latitude_) &&
                nh_.getParam("/common/map_origin_altitude", pcd_origin_altitude_))
            {
                ROS_INFO_STREAM("[Localization] Lidar Handler params load success" << "\n"
                                                                                   << "  pcd path: " <<
                                                                                   ros::package::getPath("in2ulv_bringup") +
                                                                                   pcd_path_ << "\n"
                                                                                   << "  leaf size: " << leaf_size_ << "\n"
                                                                                   << "  resolution: " << resolution_ << "\n"
                                                                                   << "  epsilon: " << epsilon_ << "\n"
                                                                                   << "  max iteration: " << max_iterations_
                                                                                   << "\n"
                                                                                   << "  step size: " << step_size_ << "\n"
                                                                                   << "  pcd_origin_longitude: "
                                                                                   << pcd_origin_longitude_ << "\n"
                                                                                   << "  pcd_origin_latitude: "
                                                                                   << pcd_origin_latitude_ << "\n"
                                                                                   << "  pcd_origin_altitude: "
                                                                                   << pcd_origin_altitude_);
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Lidar Handler params was not found");
            }
            /* 读取激光雷达外参 */
            transform_LIDARtoBASELINK_.setIdentity();
            XmlRpc::XmlRpcValue lidar_external_xml;
            Eigen::VectorXd lidar_external_vec(6);
            if (nh_.getParam("/common/lidar_external", lidar_external_xml) && lidar_external_xml.size() == 6)
            {
                for (int i = 0; i < 6; i++)
                {
                    lidar_external_vec[i] = static_cast<double>(lidar_external_xml[i]);
                }

                transform_LIDARtoBASELINK_.pretranslate(Eigen::Vector3d(lidar_external_vec[0],
                                                                        lidar_external_vec[1],
                                                                        lidar_external_vec[2]));
                transform_LIDARtoBASELINK_.rotate(
                    Eigen::Matrix3d(Eigen::AngleAxisd(lidar_external_vec[5] * M_PI / 180, Eigen::Vector3d::UnitZ()) *
                                    Eigen::AngleAxisd(lidar_external_vec[4] * M_PI / 180, Eigen::Vector3d::UnitY()) *
                                    Eigen::AngleAxisd(lidar_external_vec[3] * M_PI / 180, Eigen::Vector3d::UnitX())));

                ROS_INFO_STREAM("[Localization] Lidar external params load success" << "\n"
                                                                                    << "  translation [x, y, z]: ["
                                                                                    << lidar_external_vec[0] << ", "
                                                                                    << lidar_external_vec[1] << ", "
                                                                                    << lidar_external_vec[2] << "]\n"
                                                                                    << "  rotation [roll, pitch, yaw]: ["
                                                                                    << lidar_external_vec[3] << ", "
                                                                                    << lidar_external_vec[4] << ", "
                                                                                    << lidar_external_vec[5] << "]");
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Lidar external params was not found in full");
            }
            /* 读取激光雷达处理间隔 */
            if (nh_.getParam("lidar_interval", lidar_interval_))
            {
                ROS_INFO_STREAM("[Localization] Lidar process interval load success" << "\n"
                                                                                     << "  Lidar process interval: "
                                                                                     << lidar_interval_);
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Lidar process interval was not found");
            }
            /* 计算点云地图到UTM的变换 */
            double utm_north, utm_east;
            gps_common::LLtoUTM(pcd_origin_latitude_, pcd_origin_longitude_,
                                utm_north, utm_east, utm_zone_);
            transform_PCMtoUTM_.setIdentity();
            /* 注意 UTM 和地图坐标系都是东北天 */
            transform_PCMtoUTM_.pretranslate(Eigen::Vector3d(utm_east, utm_north, pcd_origin_altitude_));
            /* 构造 LidarHandler */
            lidar_handler_ptr_ =
                std::make_unique<LidarHandler>(
                    ros::package::getPath("in2ulv_bringup") + pcd_path_, leaf_size_,
                    resolution_, epsilon_, max_iterations_, step_size_,
                    transform_LIDARtoBASELINK_, transform_PCMtoUTM_);
            /* 发布激光雷达与 INS 的静态位姿变换 */
            /* 利用该静态变换和激光雷达当前扫描结果检查 INS 位姿偏差 */
            geometry_msgs::TransformStamped lidar_tf_msgs;
            lidar_tf_msgs = tf2::eigenToTransform(transform_LIDARtoBASELINK_);
            lidar_tf_msgs.header.stamp = ros::Time::now();
            lidar_tf_msgs.header.frame_id = ins_frame_;
            lidar_tf_msgs.child_frame_id = lidar_frame_;
            static_tf_pub_.sendTransform(lidar_tf_msgs);

            /* 设置位姿初始相关变量 */
            if (nh_.getParam("/common/use_ins_init", use_ins_init_))
            {
                ROS_INFO_STREAM("[Localization] Init method is: " << (use_ins_init_ ? "ins" : "default init pose"));

                if (!use_ins_init_)
                {
                    XmlRpc::XmlRpcValue default_init_pose_list;
                    if (nh_.getParam("/common/default_init_pose_list", default_init_pose_list) &&
                        default_init_pose_list.getType() == XmlRpc::XmlRpcValue::TypeArray)
                    {
                        ROS_INFO_STREAM("[Localization] Default pose num: " << default_init_pose_list.size());
                        default_init_poses_.reserve(default_init_pose_list.size());

                        for (int index = 0; index < default_init_pose_list.size(); index++)
                        {
                            /* 数据类型转换 */
                            XmlRpc::XmlRpcValue default_pose_xml = default_init_pose_list[index];
                            Eigen::VectorXd default_pose_vec(6);
                            for (int i = 0; i < 6; i++)
                            {
                                default_pose_vec[i] = static_cast<double>(default_pose_xml[i]);
                            }
                            ROS_INFO_STREAM("[Localization] Default pose " << index << " pose: " << default_pose_vec.transpose());

                            Eigen::Isometry3d default_pose = Eigen::Isometry3d::Identity();
                            default_pose.pretranslate(Eigen::Vector3d(default_pose_vec[0],
                                                                      default_pose_vec[1],
                                                                      default_pose_vec[2]));
                            double yaw = default_pose_vec[5] + M_PI * 0.5;     // UTM 的姿态角以北向为零
                            KalmanFilter::MappingRotation(yaw);
                            default_pose.rotate(
                                Eigen::Matrix3d(Eigen::AngleAxisd(yaw, Eigen::Vector3d::UnitZ()) *
                                                Eigen::AngleAxisd(default_pose_vec[4], Eigen::Vector3d::UnitY()) *
                                                Eigen::AngleAxisd(default_pose_vec[3], Eigen::Vector3d::UnitX())));
                            default_init_poses_.push_back(default_pose);
                        }
                    }
                    else
                    {
                        use_ins_init_ = true;
                        ROS_FATAL_STREAM("[Localization] Can't load default init pose, use ins to init");
                    }
                }
            }
            else
            {
                use_ins_init_ = true;
                ROS_FATAL_STREAM("[Localization] Can't load init method, use ins to init by default");
            }

            /* 初始化 INSHandler */
            ins_handler_ptr_ = std::make_unique<INSHandler>();

            /* 初始化 OdometryHandler */
            odometry_handler_ptr_ = std::make_unique<OdometryHandler>();

            /* 初始化 IMUHandler */
            if (nh_.getParam("imu_acc_noise", imu_acc_noise_) && nh_.getParam("imu_gyr_noise", imu_gyr_noise_) &&
                nh_.getParam("imu_acc_bias", imu_acc_bias_) && nh_.getParam("imu_gyr_bias", imu_gyr_bias_) &&
                nh_.getParam("imu_gravity", imu_gravity_))
            {
                ROS_INFO_STREAM("[Localization] IMU Handler params load success" << "\n"
                                                                                 << "  IMU Acc Noise: " << imu_acc_noise_ << "\n"
                                                                                 << "  IMU Gyr Noise: " << imu_gyr_noise_ << "\n"
                                                                                 << "  IMU Acc Bias: " << imu_acc_bias_ << "\n"
                                                                                 << "  IMU Gyr Bias: " << imu_gyr_bias_ << "\n"
                                                                                 << "  IMU Gravity: " << imu_gravity_);
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] IMU params was not found in full");
            }
            imu_handler_ptr_ = std::make_unique<IMUHandler>(imu_acc_noise_, imu_gyr_noise_,
                                                            imu_acc_bias_, imu_gyr_bias_,
                                                            imu_gravity_);

            /* 配置滤波器 */
            XmlRpc::XmlRpcValue process_noise_xml, initial_estimate_xml;
            Eigen::MatrixXd process_noise_mat(KalmanFilter::PoseSystem::STATE_SIZE,
                                              KalmanFilter::PoseSystem::STATE_SIZE);
            Eigen::MatrixXd initial_estimate_mat(KalmanFilter::PoseSystem::STATE_SIZE,
                                                 KalmanFilter::PoseSystem::STATE_SIZE);
            process_noise_mat.setZero();
            initial_estimate_mat.setZero();
            if (nh_.getParam("process_noise_covariance", process_noise_xml) &&
                process_noise_xml.size() == KalmanFilter::PoseSystem::STATE_SIZE &&
                nh_.getParam("initial_estimate_covariance", initial_estimate_xml) &&
                initial_estimate_xml.size() == KalmanFilter::PoseSystem::STATE_SIZE &&
                nh_.getParam("ekf_debug", ekf_debug_))
            {
                /* 读取过程噪声协方差矩阵和初始状态协方差矩阵 */
                for (int i = 0; i < KalmanFilter::PoseSystem::STATE_SIZE; i++)
                {
                    process_noise_mat(i, i) = static_cast<double>(process_noise_xml[i]);
                    initial_estimate_mat(i, i) = static_cast<double>(initial_estimate_xml[i]);
                }

                /* 设置 ekf debug 模式及文件路径 */
                if (ekf_debug_)
                {
                    log_stream_.open((ros::package::getPath("in2ulv_localization") + "/log/ekf_log.txt").c_str());
                }
                filter_.SetDebug(ekf_debug_, &log_stream_);

                ROS_INFO_STREAM("[Localization] Filter params load success" << "\n"
                                                                            << "  Process noise mat: \n" << process_noise_mat
                                                                            << "\n"
                                                                            << "  Initial estimate mat: \n"
                                                                            << initial_estimate_mat << "\n"
                                                                            << "  Enable log: "
                                                                            << (ekf_debug_ ? "true \n  Log path: /log/ekf_log.txt"
                                                                                           : "false"));
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Filter params was not found in full");
            }
            filter_.SetProcessNoiseCovariance(process_noise_mat);
            filter_.SetEstimateCovariance(initial_estimate_mat);

            /* 设置传感器订阅器 */
            ins_sub_ = nh_.subscribe("/ULV_ins_std_info", 50, &LocalizationNode::INSCallback, this);
            imu_sub_ = nh_.subscribe("/ULV_imu_std_msg", 50, &LocalizationNode::IMUCallback, this);
            odometry_sub_ = nh_.subscribe("/ULV_odometry_info", 50, &LocalizationNode::OdometryCallback, this);
            std::string lidar_topic_name;
            if (nh_.getParam("/common/lidar_topic_name", lidar_topic_name))
            {
                ROS_INFO_STREAM("[Localization] Lidar topic name load success" << "\n"
                                                                               << "  Lidar topic name: " << lidar_topic_name);
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Lidar topic name was not found");
            }
            lidar_sub_ = nh_.subscribe(lidar_topic_name, 1, &LocalizationNode::LidarCallback, this);
            /* 设置决策订阅器 */
            action_type_sub_ = nh_.subscribe("/ULV_action_type", 1, &LocalizationNode::ActionTypeCallback, this);
            action_type_atomic_.store(in2ulv_common::ULVActionType::INIT);

            /* 开启定时器 */
            if (nh_.getParam("node_frequency", node_frequency_))
            {
                ROS_INFO_STREAM("[Localization] Filter frequency load success" << "\n"
                                                                               << "  Output frequency: " << node_frequency_);
            }
            else
            {
                ROS_FATAL_STREAM("[Localization] Filter frequency was not found in full");
            }
            period_update_timer_ = nh_.createTimer(ros::Duration(1 / double(node_frequency_)),
                                                   &LocalizationNode::PeriodicUpdateTimerCallback, this);

            /* 设置发布器 */
            lla_localization_info_pub_ = nh_.advertise<in2ulv_msgs::LocalizationInfo>("/ULV_lla_localization_info", 1);
            utm_localization_info_pub_ = nh_.advertise<in2ulv_msgs::LocalizationInfo>("/ULV_utm_localization_info", 1);
            map_localization_info_pub_ = nh_.advertise<in2ulv_msgs::LocalizationInfo>("/ULV_map_localization_info", 1);
            module_info_pub_ = nh_.advertise<in2ulv_msgs::ModuleInfo>("/ULV_module_info", 1);

            /* 设置主循环函数运行标志位 */
            main_thread_run_flag_atomic_.store(true);
        }

        bool LocalizationNode::ShowGlobalPointCloudMapCallback(std_srvs::Trigger::Request& request,
                                                               std_srvs::Trigger::Response& response)
        {
            ROS_WARN_STREAM("[Localization] Get server to show global point cloud map");
            if (global_point_cloud_map_pub_.getNumSubscribers() == 0)
            {
                ROS_ERROR_STREAM("[Localization] Rviz may not be opened. Server termination");
                return false;
            }

            sensor_msgs::PointCloud2 point_cloud_msgs;
            pcl::toROSMsg(*lidar_handler_ptr_->GetGlobalPointCloudMapFiltered(), point_cloud_msgs);

            point_cloud_msgs.header.frame_id = pc_map_frame_;
            global_point_cloud_map_pub_.publish(point_cloud_msgs);
            response.success = true;
            response.message = "[Localization] Already shown filtered global point cloud map, please check rviz";
            return true;
        }

        void LocalizationNode::INSCallback(const in2ulv_msgs::INSStdMsgConstPtr& ins_std_msg_const_ptr)
        {
            static bool use_ins_ = true;

            /* 处理 INS 重复时间戳 */
            if (ins_std_msg_const_ptr->header.stamp.toSec() == ins_handler_ptr_->GetLatestDataTime())
            {
                return;
            }

            /* 传感器输入数据 */
            ins_handler_ptr_->SetData(ins_std_msg_const_ptr);

            /* 未初始化时则不进行后续操作 */
            if (!filter_.GetInitializedStatus())
            {
                return;
            }

            if (ins_callback_count_ >= 10)
            {
                ROS_INFO_STREAM("[Localization] Already receive " << 10 << " INS data");
                use_ins_ = false;
            }

            /* 统计时间 */
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now(), time_end;
            double time_used;

            /* 处理 INS 数据并插入测量结果优先队列 */
            bool condition_1 = ins_handler_ptr_->GetGNSSPositionFlag() == INSFlag::NARROW_INT;
            bool condition_2 = ins_handler_ptr_->GetGNSSHeadingFlag() == INSFlag::NARROW_INT;
            bool final_condition = condition_1 && condition_2;
            /* INS 位姿一定会处理 */
            auto ins_pose_measurement = std::make_shared<Measurement>();
            if (ins_handler_ptr_->ProcessData(ins_pose_measurement, PoseSystem::Pose) && use_ins_)
            {
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(ins_pose_measurement);
            }
            /* 对 INS 进行差分处理需要系统当前的旋转 */
            /* 因为系统状态中的速度是 b 系下的速度 */
            Eigen::Isometry3d pose_estimate;
            filter_.StateToPose(pose_estimate);
            auto ins_twist_measurement = std::make_shared<Measurement>();
            if (ins_handler_ptr_->ProcessData(ins_twist_measurement, PoseSystem::Twist, pose_estimate) && !use_ins_)
            {
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(ins_twist_measurement);
            }

            time_end = std::chrono::steady_clock::now();
            time_used = std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count();

            if (ins_callback_count_ >= 10)
            {
                ROS_INFO_STREAM("[Localization] Process the tenth INS data complete"
                                    << "  cost time: " << time_used * 1000.0 << " ms");
                ins_callback_count_ = 0;
            }
            else
            {
                ins_callback_count_++;
            }

            /* 调试模式 */
            if (rviz_debug_ && ins_pose_measurement != nullptr)
            {
                /* 调试模式需要将 INS 给出的 UTM 坐标系下测量结果转换到 pc_map_frame 下 */
                /* 调试模式只显示 INS 的绝对位姿结果 */
                geometry_msgs::TransformStamped ins_tf_msgs;
                Eigen::Isometry3d pose = TransformPoseVector(ins_pose_measurement->measurement_,
                                                             transform_PCMtoUTM_.inverse());
                /* 将测量结果赋值给 TF */
                ins_tf_msgs = tf2::eigenToTransform(pose);
                ins_tf_msgs.header.stamp = ins_std_msg_const_ptr->header.stamp;
                ins_tf_msgs.header.frame_id = pc_map_frame_;
                ins_tf_msgs.child_frame_id = ins_frame_;
                tf_pub_.sendTransform(ins_tf_msgs);

                /* 发布当前 INS 状态 */
                std_msgs::String ins_status;
                ins_status.data =
                    "INS GNSS Position Flag: " + INSFlagName[ins_handler_ptr_->GetGNSSPositionFlag()] + "\n" +
                    "INS GNSS Heading Flag: " + INSFlagName[ins_handler_ptr_->GetGNSSHeadingFlag()] + "\n" +
                    "INS GNSS Satellite Num: " + std::to_string(ins_handler_ptr_->GetGNSSNumSV());
                ins_status_pub_.publish(ins_status);
            }
        }

        void LocalizationNode::IMUCallback(const sensor_msgs::ImuConstPtr& imu_const_ptr)
        {
            /* IMU 会多发一次重复数据，这边处理掉 */
            if (imu_const_ptr->header.stamp.toSec() == imu_handler_ptr_->GetLatestDataTime())
            {
                return;
            }

            /* 输入数据 */
            imu_handler_ptr_->SetData(imu_const_ptr);

            /* 未初始化则不进行后续处理 */
            if (!filter_.GetInitializedStatus())
            {
                return;
            }

            if (imu_callback_count_ >= 10)
                ROS_INFO_STREAM("[Localization] Already receive " << 10 << " IMU data");

            /* 统计时间 */
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now(), time_end;
            double time_used;

            /* 处理 IMU 数据并插入测量结果优先队列 */
            Eigen::Isometry3d pose_estimate;
            filter_.StateToPose(pose_estimate);
            /* IMU 有速度和加速度 */
            auto imu_twist_measurement = std::make_shared<Measurement>();
            if (imu_handler_ptr_->ProcessData(imu_twist_measurement, PoseSystem::Twist))
            {
                /* 插入队列 */
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(imu_twist_measurement);
            }
            auto imu_acceleration_measurement = std::make_shared<Measurement>();
            /* 加速度需要当前姿态来修正重力加速度 */
            if (imu_handler_ptr_->ProcessData(imu_acceleration_measurement, PoseSystem::Acceleration, pose_estimate))
            {
                /* 插入队列 */
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(imu_acceleration_measurement);
            }

            /* 调试模式 */
            if (rviz_debug_ && imu_twist_measurement != nullptr && imu_acceleration_measurement != nullptr)
            {
                /* IMU 结果好像除了曲线能看，没啥好的显示方式 */
                sensor_msgs::Imu imu_msgs;
                imu_msgs.angular_velocity.x = imu_twist_measurement->measurement_[PoseSystem::StateMemberVroll];
                imu_msgs.angular_velocity.y = imu_twist_measurement->measurement_[PoseSystem::StateMemberVpitch];
                imu_msgs.angular_velocity.z = imu_twist_measurement->measurement_[PoseSystem::StateMemberVyaw];
                imu_msgs.linear_acceleration.x = imu_acceleration_measurement->measurement_[PoseSystem::StateMemberAx];
                imu_msgs.linear_acceleration.y = imu_acceleration_measurement->measurement_[PoseSystem::StateMemberAy];
                imu_msgs.linear_acceleration.z = imu_acceleration_measurement->measurement_[PoseSystem::StateMemberAz];
                imu_msgs.header.stamp = imu_const_ptr->header.stamp;
                imu_pub_.publish(imu_msgs);
            }

            time_end = std::chrono::steady_clock::now();
            time_used = std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count();

            if (imu_callback_count_ >= 10)
            {
                ROS_INFO_STREAM("[Localization] Process the tenth IMU data complete"
                                    << "  cost time: " << time_used << " ms");
                imu_callback_count_ = 0;
            }
            else
            {
                imu_callback_count_++;
            }
        }

        void LocalizationNode::OdometryCallback(const nav_msgs::OdometryConstPtr& odometry_const_ptr)
        {
            /* 传感器输入数据 */
            odometry_handler_ptr_->SetData(odometry_const_ptr);

            if (!filter_.GetInitializedStatus())
            {
                return;
            }

            if (odometry_callback_count_ >= 10)
                ROS_INFO_STREAM("[Localization] Already receive " << 10 << " Odometry data");

            /* 统计时间 */
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now(), time_end;
            double time_used;

            /* 处理 轮式里程计 数据并插入测量结果优先队列 */
            auto odometry_twist_measurement = std::make_shared<Measurement>();
            if (odometry_handler_ptr_->ProcessData(odometry_twist_measurement, PoseSystem::Twist))
            {
                /* 插入队列 */
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(odometry_twist_measurement);
            }

            /* 调试模式 */
            if (rviz_debug_ && odometry_twist_measurement != nullptr)
            {
                /* 设置表示速度的 marker */
                visualization_msgs::Marker odometry_marker;
                /* 设置箭头方向 */
                if (odometry_twist_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberVx] < 0)
                {
                    Eigen::Quaterniond rotation =
                        Eigen::Quaterniond(Eigen::AngleAxisd(90 * PI / 180, Eigen::Vector3d::UnitZ()));
                    odometry_marker.pose.orientation.x = rotation.x();
                    odometry_marker.pose.orientation.y = rotation.y();
                    odometry_marker.pose.orientation.z = rotation.z();
                    odometry_marker.pose.orientation.w = rotation.w();
                }
                /* 设置尺寸， X 轴方向尺寸和速度正相关 */
                if (std::fabs(odometry_twist_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberVx]) > 0.001)
                {
                    odometry_marker.type = visualization_msgs::Marker::ARROW;
                    odometry_marker.scale.x =
                        0.8 * std::fabs(odometry_twist_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberVx]);
                }
                else
                {
                    odometry_marker.type = visualization_msgs::Marker::SPHERE;
                    odometry_marker.scale.x = 0.3;
                }
                odometry_marker.scale.y = 0.3;
                odometry_marker.scale.z = 0.3;
                /* 设置颜色 */
                odometry_marker.color.a = 1.0;
                odometry_marker.color.r = 1.0;
                odometry_marker.color.g = 0.0;
                odometry_marker.color.b = 0.0;
                /* 设置形状、行为等属性 */
                odometry_marker.lifetime = ros::Duration();
                odometry_marker.action = visualization_msgs::Marker::MODIFY;    // 上次的 Marker 被删除，总是显示最新的
                odometry_marker.header.frame_id = ekf_pose_frame_;
                odometry_pub_.publish(odometry_marker);
            }

            time_end = std::chrono::steady_clock::now();
            time_used =
                std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count();

            if (odometry_callback_count_ >= 10)
            {
                ROS_INFO_STREAM("[Localization] Process the tenth Odometry data complete"
                                    << "  cost time: " << time_used << " ms");
                odometry_callback_count_ = 0;
            }
            else
            {
                odometry_callback_count_++;
            }
        }

        void LocalizationNode::LidarCallback(const sensor_msgs::PointCloud2ConstPtr& point_cloud_const_ptr)
        {
            /* 控制激光雷达处理频率 */
            if (lidar_callback_count_ < lidar_interval_)
            {
                lidar_callback_count_++;
                return;
            }
            else
            {
                lidar_callback_count_ = 0;
            }

            /* 传感器输入数据 */
            lidar_handler_ptr_->SetData(point_cloud_const_ptr);

            if (!filter_.GetInitializedStatus())
            {
                return;
            }

            ROS_WARN_STREAM("[Localization] Receive Lidar data, begin to process");

            /* 统计时间，不用 ros::Time::now() 是因为如果使用 rosbag 的话，其 clock 时间频率不高，会出现时间重叠的情况 */
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now(), time_end;
            double time_used;

            /* 利用 INS 结果计算迭代初值 */
            /* NDT 迭代初值是 Lidar scan 相对于点云地图的位姿 */
            Eigen::Isometry3d pose_estimate;
            filter_.StateToPose(pose_estimate);

            /* 处理 Lidar 数据并插入测量结果优先队列 */
            auto lidar_pose_measurement = std::make_shared<Measurement>();
            if (lidar_handler_ptr_->ProcessData(lidar_pose_measurement, PoseSystem::Pose, pose_estimate))
            {
                /* 插入队列 */
                std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                measurement_priority_queue_.push(lidar_pose_measurement);
            }

            /* 统计时间 */
            time_end = std::chrono::steady_clock::now();
            time_used =
                std::chrono::duration_cast<std::chrono::duration<double, std::milli> >(time_end - time_start).count();
            ROS_WARN_STREAM("[Localization] Process Lidar data complete"
                                << "  cost time: " << time_used << " ms");

            /* 调试模式 */
            if (rviz_debug_ && lidar_pose_measurement != nullptr)
            {
                /* 发布 NDT 匹配结果 */
                geometry_msgs::TransformStamped ndt_transform_stamped;
                /* 调试模式需要将 激光雷达 给出的 UTM 坐标系下测量结果转换到 pc_map_frame 下 */
                Eigen::Isometry3d pose = TransformPoseVector(lidar_pose_measurement->measurement_, transform_PCMtoUTM_.inverse());
                /* 将测量结果赋值给 TF */
                ndt_transform_stamped = tf2::eigenToTransform(pose);
                ndt_transform_stamped.header.stamp = point_cloud_const_ptr->header.stamp;
                ndt_transform_stamped.header.frame_id = pc_map_frame_;
                ndt_transform_stamped.child_frame_id = ndt_frame_;
                tf_pub_.sendTransform(ndt_transform_stamped);
                /* 发布 NDT 匹配轨迹 */
                geometry_msgs::PoseStamped ndt_pose_stamped;
                ndt_pose_stamped.pose = tf2::toMsg(pose);
                ndt_pose_stamped.header.stamp = point_cloud_const_ptr->header.stamp;
                ndt_pose_stamped.header.frame_id = pc_map_frame_;
                ndt_pose_path_deque_.push_back(ndt_pose_stamped);
                while (ndt_pose_path_deque_.size() > 50)
                {   // 控制轨迹长度
                    ndt_pose_path_deque_.pop_front();
                }
                nav_msgs::Path ndt_pose_path;
                ndt_pose_path.poses =
                    std::vector<geometry_msgs::PoseStamped>(ndt_pose_path_deque_.begin(), ndt_pose_path_deque_.end());
                ndt_pose_path.header.stamp = point_cloud_const_ptr->header.stamp;
                ndt_pose_path.header.frame_id = pc_map_frame_;
                ndt_pose_path_pub_.publish(ndt_pose_path);

                /* 发布匹配点云结果 */
                /* 所有点云的坐标均在 pc_map 下，所以不再需要进行坐标转换 */
                sensor_msgs::PointCloud2 point_cloud_msgs;
                pcl::toROSMsg(*lidar_handler_ptr_->GetAlignedPointCloud(), point_cloud_msgs);
                /* 注意 point_cloud_msgs 的修改需要放在 toROSMsg 之后，否则修改会被该函数重置 */
                point_cloud_msgs.header.frame_id = pc_map_frame_;
                ndt_aligned_point_cloud_pub_.publish(point_cloud_msgs);
                /* 发布匹配点云匹配目标 */
                pcl::toROSMsg(*lidar_handler_ptr_->GetLocalPointCloudMapFiltered(), point_cloud_msgs);
                point_cloud_msgs.header.frame_id = pc_map_frame_;
                local_point_cloud_map_pub_.publish(point_cloud_msgs);
                /* 发布当前激光雷达扫描结果 */
                pcl::toROSMsg(*lidar_handler_ptr_->GetCurrentPointCloudScan(), point_cloud_msgs);
                point_cloud_msgs.header.frame_id = lidar_frame_;
                cur_point_cloud_scan_pub_.publish(point_cloud_msgs);

                /* 发布 NDT 匹配时间 */
                std_msgs::Float32 ndt_verbose;
                ndt_verbose.data = float(time_used);
                ndt_matching_time_pub_.publish(ndt_verbose);
                /* 发布 NDT 分数 */
                ndt_verbose.data = float(lidar_handler_ptr_->GetFitnessScore());
                ndt_score_pub_.publish(ndt_verbose);
                /* 发布 NDT 可信度 */
                ndt_verbose.data = float(lidar_handler_ptr_->GetTransformProbability());
                ndt_probability_pub_.publish(ndt_verbose);
            }
        }

        void LocalizationNode::ActionTypeCallback(const in2ulv_msgs::ActionTypeConstPtr& action_type_const_ptr)
        {
            /* 只存储当前 action_type 类型 */
            action_type_atomic_.store(action_type_const_ptr->action_type);
        }

        void LocalizationNode::PeriodicUpdateTimerCallback(const ros::TimerEvent& timer_event)
        {
            /* 暂存当前测量值，避免阻塞其他回调函数 */
            /* 因为加了锁的原因，所以此时 measurement_priority_queue 中的测量值时间肯定比 current_time 要更旧 */
            /* 所以队列中的全部测量结果都需要在此次更新中处理完成 */
            MeasurementPriorityQueue measurement_priority_queue;
            {
                std::lock_guard<std::mutex> lock_guard(measurement_mutex_);
                measurement_priority_queue = measurement_priority_queue_;
                ClearMeasurementPriorityQueue();
            }

            /* current_time 必须用 ros::Time::now, 否则在关 rosbag 的时候无法停止滤波预测 */
            double current_time = ros::Time::now().toSec();
            /* 记录时间 */
            std::chrono::steady_clock::time_point time_start = std::chrono::steady_clock::now();

            /* 未初始化时，由 INS 结果初始化，因为 INS 可以提供位姿状态量，其他状态量的初始值可以为零 */
            if (!filter_.GetInitializedStatus())
            {
                while (!measurement_priority_queue.empty() &&
                       measurement_priority_queue.top()->topic_name_ != "init_pose")
                {
                    measurement_priority_queue.pop();
                }
            }

            /* 存在待处理的观测结果 */
            /* 由于 ProcessMeasurement 函数有处理初始观测的功能，可将初始观测作为普通观测传入，故此处不用再区分是否已初始化 */
            /* 下面这部分代码可能将滤波器的初始状态由 false 变为 true */
            if (!measurement_priority_queue.empty())
            {
                /* 如果观测值队列中最早的观测结果比滤波器当前的时间要更早，则需要将滤波器时间回溯到该观测值时间之前 */
                /* 这是处理滞后数据的方法 */
                const auto earliest_measurement = measurement_priority_queue.top();
                if (earliest_measurement->time_ < filter_.GetLastMeasurementTime())
                {
                    /* 恢复的时间点较最早的观测结果更前一点，保证该滞后的观测结果被用于滤波器修正 */
                    RevertHistory(earliest_measurement->time_ - 1e-9, measurement_priority_queue);
                }

                /* 循环处理观测结果 */
                /* 此时观测队列中可能包含上次观测的队列 */
                /* 但队列中的观测值对应的时间肯定比 current_time 更小 */
                while (!measurement_priority_queue.empty() && ros::ok())
                {
                    // 注意 filter_ 的 last_measurement_time_ 在这个 while 循环中可能会更新
                    const auto measurement = measurement_priority_queue.top();
//                    ROS_INFO_STREAM("[Localization] Process measurement\n" << std::setprecision(20)
//                                        << "  current time: " << current_time << "\n"
//                                        << "  measurement topic: " << measurement->topic_name_ << "\n"
//                                        << "  measurement time: " << measurement->time_ << "\n"
//                                        << "  filter last measurement time: " << filter_.GetLastMeasurementTime() << "\n");
                    measurement_priority_queue.pop();
                    /* 处理该观测结果 */
                    filter_.ProcessMeasurement(*measurement);

                    /* 将观测结果记录下来 */
                    measurement_history_.push_back(measurement);
                    /* 将系统状态保存下来。每个时间戳尽量只保留一个系统状态 */
                    /* 由于观测结果之间的时间差可能很小 */
                    /* 下面使用 measurement_priority_queue.top() 来做时间判断是为了让系统状态保存在尽可能更新的时间上 */
                    /* 如果使用 measurement->time_ 来做时间判断则会将系统状态保存在尽可能更旧的时间上 */
                    /* 这种做法类似非极大值抑制 */
                    if (measurement_priority_queue.empty() ||
                        std::fabs(measurement_priority_queue.top()->time_ - filter_.GetLastMeasurementTime()) > 1e-9)
                    {
                        KalmanFilter::FilterState::Ptr state = std::make_shared<KalmanFilter::FilterState>();
                        state->state_ = filter_.GetState();
                        state->estimate_covariance_ = filter_.GetEstimateCovariance();
                        state->last_measurement_time_ = filter_.GetLastMeasurementTime();
                        filter_state_history_.push_back(state);
                    }
                }
            }

            /* 如果滤波器已经初始化完成，并且经过上述步骤已经没有观测结果了，则保持预测到当前时刻 */
            if (filter_.GetInitializedStatus())
            {
                double delta_time = current_time - filter_.GetLastMeasurementTime();
                filter_.ValidateDeltaTime(delta_time);
                filter_.Predict(0.0, delta_time);   // 第一个参数没啥用
                filter_.SetLastMeasurementTime(current_time);

                /* 至此，当前时间滤波器更新完成，发布当前定位结果 */
                PublishLocalizationInfo();
            }

            /* 按照固定时间清除历史内容 */
            /* 这里暂且保留 1 s 内的数据 */
            ClearExpiredHistory(current_time - 1.0);

            /* 记录时间 */
            std::chrono::steady_clock::time_point time_end = std::chrono::steady_clock::now();
            double time_used = std::chrono::duration_cast<std::chrono::duration<double> >(
                time_end - time_start).count();
            ROS_WARN_STREAM("[Localization] Period update complete\n"
                                << "  cost time: " << time_used * 1000 << " ms");

            /* 调试模式，输出位姿信息 */
            if (rviz_debug_ && filter_.GetInitializedStatus())
            {
                /* 调试模式需要将 INS 给出的 UTM 坐标系下测量结果转换到 pc_map_frame 下 */
                Eigen::Isometry3d ekf_pose_utm, ekf_pose_map;
                filter_.StateToPose(ekf_pose_utm);
                ekf_pose_map = transform_PCMtoUTM_.inverse() * ekf_pose_utm;
                /* 将测量结果赋值给 TF */
                geometry_msgs::TransformStamped ekf_transform_stamped;
                ekf_transform_stamped = tf2::eigenToTransform(ekf_pose_map);
                ekf_transform_stamped.header.stamp = ros::Time(filter_.GetLastMeasurementTime());
                ekf_transform_stamped.header.frame_id = pc_map_frame_;
                ekf_transform_stamped.child_frame_id = ekf_pose_frame_;
                tf_pub_.sendTransform(ekf_transform_stamped);

                /* 发布里程计类型数据，更便于查看定位效果 */
                geometry_msgs::PoseStamped ekf_pose_stamped;
                ekf_pose_stamped.pose = tf2::toMsg(ekf_pose_map);
                ekf_pose_stamped.header.stamp = ekf_transform_stamped.header.stamp;
                ekf_pose_stamped.header.frame_id = pc_map_frame_;
                ekf_pose_path_deque_.push_back(ekf_pose_stamped);
                while (ekf_pose_path_deque_.size() > 1000)
                {  // 控制轨迹长度
                    ekf_pose_path_deque_.pop_front();
                }
                nav_msgs::Path ekf_pose_path;
                ekf_pose_path.poses =
                    std::vector<geometry_msgs::PoseStamped>(ekf_pose_path_deque_.begin(), ekf_pose_path_deque_.end());
                ekf_pose_path.header.stamp = ros::Time(filter_.GetLastMeasurementTime());
                ekf_pose_path.header.frame_id = pc_map_frame_;
                ekf_pose_path_pub_.publish(ekf_pose_path);

                /* 发布速度数据 */
                auto state = filter_.GetState();
                geometry_msgs::TwistStamped ekf_twist_msgs;
                ekf_twist_msgs.twist.linear.x = state[PoseSystem::StateMemberVx];
                ekf_twist_msgs.twist.linear.y = state[PoseSystem::StateMemberVy];
                ekf_twist_msgs.twist.linear.z = state[PoseSystem::StateMemberVz];
                ekf_twist_msgs.twist.angular.x = state[PoseSystem::StateMemberVroll];
                ekf_twist_msgs.twist.angular.y = state[PoseSystem::StateMemberVpitch];
                ekf_twist_msgs.twist.angular.z = state[PoseSystem::StateMemberVyaw];
                ekf_twist_msgs.header.stamp = ekf_transform_stamped.header.stamp;
                ekf_twist_msgs.header.frame_id = ekf_pose_frame_;
                ekf_twist_pub_.publish(ekf_twist_msgs);

                /* 发布 EKF 耗时 */
                std_msgs::Float32 ekf_update_time;
                ekf_update_time.data = float(time_used * 1000.0);
                ekf_update_time_pub_.publish(ekf_update_time);
            }
        }

        void LocalizationNode::LoopRun()
        {
            /* 控制此处的循环频率为 1Hz */
            ros::Rate loop_rate(1);

            /* 向 rviz 发布点云地图 */
            if (rviz_debug_)
            {
                std_srvs::Trigger show_point_cloud_map_srv;
                while (!ros::service::call("/Show_Global_Point_Cloud_Map", show_point_cloud_map_srv))
                {
                    ROS_WARN_ONCE("Waiting for rviz. Please don't shut down");
                    loop_rate.sleep();
                }
            }

            while (main_thread_run_flag_atomic_.load())
            {
                /* 给决策发布的定位模块当前状态 */
                in2ulv_msgs::ModuleInfo module_info_msgs;
                module_info_msgs.module_type = in2ulv_common::ULVModuleType::LOCALIZATION;
                module_info_msgs.error_code = in2ulv_common::ULVErrorCode::MODULE_OK;
                module_info_msgs.action_status = in2ulv_common::ULVActionStatus::RUNNING;

                try
                {
                    /* 检查各传感器数据时间是否滞后 */
                    CheckSensorDataLag();

                    /* 定位节点暂时只考虑初始化模式和其他模式 */
                    switch (action_type_atomic_.load())
                    {
                        case in2ulv_common::ULVActionType::INIT:
                            /* 检查滤波器是否初始化 */
                            if (!filter_.GetInitializedStatus())
                            {
                                auto init_pose_measurement = std::make_shared<Measurement>();
                                /* 获取初始化位姿 */
                                GetInitialPose(init_pose_measurement);
                                {
                                    /* 插入初始位姿 */
                                    std::lock_guard<std::mutex> lock_guard_measurement(measurement_mutex_);
                                    measurement_priority_queue_.push(init_pose_measurement);
                                }
                            }
                            /* 到这就说明初始化成功 */
                            module_info_msgs.action_status = in2ulv_common::ULVActionStatus::SUCCESS;
                            break;
                        default:
                            /* 其他模式则持续检查各传感器处理结果是否正常 */
                            CheckSensorProcessStatus();
                            break;
                    }
                }
                catch (in2ulv_msgs::ModuleInfo caught_module_info)
                {
                    /* 利用 catch 捕获错误信息和错误码 */
                    module_info_msgs.error_code = caught_module_info.error_code;
                    module_info_msgs.module_info = caught_module_info.module_info;
                }

                module_info_msgs.header.stamp = ros::Time::now();
                module_info_pub_.publish(module_info_msgs);

                loop_rate.sleep();
            }
        }

        void LocalizationNode::ShutDownMainThread()
        {
            main_thread_run_flag_atomic_.store(false);
        }

        Eigen::Isometry3d& LocalizationNode::TransformPoseVector(const Eigen::VectorXd& pose_vector,
                                                                 const Eigen::Isometry3d& transform)
        {
            /* 将 Measurement 转换至 Eigen::Isometry3d */
            auto source_pose = Eigen::Isometry3d::Identity();
            source_pose.pretranslate(Eigen::Vector3d(pose_vector[PoseSystem::StateMemberX],
                                                     pose_vector[PoseSystem::StateMemberY],
                                                     pose_vector[PoseSystem::StateMemberZ]));
            source_pose.rotate(Eigen::Matrix3d(
                Eigen::AngleAxisd(pose_vector[PoseSystem::StateMemberYaw], Eigen::Vector3d::UnitZ()) *
                Eigen::AngleAxisd(pose_vector[PoseSystem::StateMemberPitch], Eigen::Vector3d::UnitY()) *
                Eigen::AngleAxisd(pose_vector[PoseSystem::StateMemberRoll], Eigen::Vector3d::UnitX())));

            auto target_pose = new(Eigen::Isometry3d);
            *target_pose = transform * source_pose;
            return *target_pose;
        }

        void LocalizationNode::ClearMeasurementPriorityQueue()
        {
            /* 这里加上 ros::ok 的判断，防止 ROS 程序销毁后该队列的 pop 出错 */
            while (!measurement_priority_queue_.empty() && ros::ok())
            {
                measurement_priority_queue_.pop();
            }
        }

        void LocalizationNode::ClearExpiredHistory(const double& time)
        {
            while (!measurement_history_.empty() && measurement_history_.front()->time_ < time)
            {
                measurement_history_.pop_front();
            }

            while (!filter_state_history_.empty() && filter_state_history_.front()->last_measurement_time_ < time)
            {
                filter_state_history_.pop_front();
            }
        }

        void LocalizationNode::RevertHistory(const double& time,
                                             std::priority_queue<KalmanFilter::Measurement::Ptr,
                                                                 std::vector<KalmanFilter::Measurement::Ptr>,
                                                                 KalmanFilter::Measurement>& measurement_queue)
        {
            /* 回溯状态 */
            /* 如果存在一个状态对应的时间小于需要回溯的时间，则使用该状态 */
            /* 否则则使用当前保存的最旧的状态 */
            KalmanFilter::FilterState::Ptr last_history_state;
            while (!filter_state_history_.empty() && filter_state_history_.back()->last_measurement_time_ > time)
            {
                last_history_state = filter_state_history_.back();
                filter_state_history_.pop_back();
            }

            /* 如果找到了一个比当前时间更旧的状态 */
            if (!filter_state_history_.empty())
            {
                last_history_state = filter_state_history_.back();
            }

            /* 不管是否最旧，如果找到了一个可以替换的状态 */
            /* 此时需要将所有的观测结果回溯到该状态之后的观测量 */
            if (last_history_state)
            {
                /* 首先回溯滤波器的当前状态 */
                filter_.SetState(last_history_state->state_);
                filter_.SetEstimateCovariance(last_history_state->estimate_covariance_);
                filter_.SetLastMeasurementTime(last_history_state->last_measurement_time_);

                /* 回溯观测量 */
                /* 注意将历史观测量重新放置在本次需要更新的观测队列中 */
                while (!measurement_history_.empty() && measurement_history_.back()->time_ > time)
                {
                    if (last_history_state->last_measurement_time_ <= measurement_history_.back()->time_)
                    {
                        measurement_queue.push(measurement_history_.back());
                    }
                    measurement_history_.pop_back();
                }
            }
        }

        void LocalizationNode::PublishLocalizationInfo()
        {
            /* 获取当前状态 */
            auto state = filter_.GetState();
            /* 待发布定位结果 */
            in2ulv_msgs::LocalizationInfo localization_info_msgs;
            localization_info_msgs.header.stamp = ros::Time(filter_.GetLastMeasurementTime());

            /* 线速度、角速度和加速度是自身坐标系下的，所以不需要进行变换 */
            localization_info_msgs.linear_velocity.x = state[PoseSystem::StateMemberVx];
            localization_info_msgs.linear_velocity.y = state[PoseSystem::StateMemberVy];
            localization_info_msgs.linear_velocity.z = state[PoseSystem::StateMemberVz];
            localization_info_msgs.angular_velocity.x = state[PoseSystem::StateMemberVroll];
            localization_info_msgs.angular_velocity.y = state[PoseSystem::StateMemberVpitch];
            localization_info_msgs.angular_velocity.z = state[PoseSystem::StateMemberVyaw];
            localization_info_msgs.linear_acceleration.x = state[PoseSystem::StateMemberAx];
            localization_info_msgs.linear_acceleration.y = state[PoseSystem::StateMemberAy];
            localization_info_msgs.linear_acceleration.z = state[PoseSystem::StateMemberAz];

            /* UTM 坐标 */
            localization_info_msgs.position.x = state[PoseSystem::StateMemberX];
            localization_info_msgs.position.y = state[PoseSystem::StateMemberY];
            localization_info_msgs.position.z = state[PoseSystem::StateMemberZ];
            localization_info_msgs.attitude.x = state[PoseSystem::StateMemberRoll];
            localization_info_msgs.attitude.y = state[PoseSystem::StateMemberPitch];
            /* UTM 坐标东向为朝向角零度方向，但需要将北向作为朝向角零度方向 */
            double yaw = state[PoseSystem::StateMemberYaw] - M_PI * 0.5;
            KalmanFilter::MappingRotation(yaw);
            localization_info_msgs.attitude.z = yaw;
            localization_info_msgs.header.frame_id = "utm";
            utm_localization_info_pub_.publish(localization_info_msgs);

            /* LLA 坐标，和 UTM 坐标的唯一区别就是 X 和 Y 的平移 */
            double latitude, longitude;
            gps_common::UTMtoLL(state[PoseSystem::StateMemberY], state[PoseSystem::StateMemberX], utm_zone_,
                                latitude, longitude);
            localization_info_msgs.position.x = longitude;
            localization_info_msgs.position.y = latitude;
            localization_info_msgs.header.frame_id = "lla";
            lla_localization_info_pub_.publish(localization_info_msgs);

//            // In attitude, x is 纬度 and y is 经度, y is Yaw(0-360,clockwise)
//            double latitude, longitude;
//            gps_common::UTMtoLL(localization_info_msgs.position.y, localization_info_msgs.position.x, utm_zone_,
//                                latitude, longitude);
//            localization_info_msgs.attitude.x = latitude;
//            localization_info_msgs.attitude.y = longitude;

            /* 地图坐标 */
            auto map_pose = TransformPoseVector(state, transform_PCMtoUTM_.inverse());
            pcl::getTranslationAndEulerAngles(map_pose,
                                              localization_info_msgs.position.x,
                                              localization_info_msgs.position.y,
                                              localization_info_msgs.position.z,
                                              localization_info_msgs.attitude.x,
                                              localization_info_msgs.attitude.y,
                                              localization_info_msgs.attitude.z);
            localization_info_msgs.header.frame_id = "map";
            map_localization_info_pub_.publish(localization_info_msgs);
        }

        void LocalizationNode::CheckSensorDataLag()
        {
            in2ulv_msgs::ModuleInfo throw_module_info;
            throw_module_info.error_code = in2ulv_common::ULVErrorCode::LOCALIZATION_DRIVER_ERROR;
            throw_module_info.module_info = " ";

            /* 记录当前时间 */
            double time_now = ros::Time::now().toSec();

            /* 判断是否滞后 */
            if (time_now - imu_handler_ptr_->GetLatestDataTime() > 1.0)
            {
                throw_module_info.module_info += imu_handler_ptr_->GetSensorName() + " ";
            }
            else if (time_now - odometry_handler_ptr_->GetLatestDataTime() > 1.0)
            {
                throw_module_info.module_info += odometry_handler_ptr_->GetSensorName() + " ";
            }
            else if (time_now - ins_handler_ptr_->GetLatestDataTime() > 1.0)
            {
                throw_module_info.module_info += ins_handler_ptr_->GetSensorName() + " ";
            }
            else if (time_now - lidar_handler_ptr_->GetLatestDataTime() > 1.0)
            {
                throw_module_info.module_info += lidar_handler_ptr_->GetSensorName() + " ";
            }
            else
            {
                throw_module_info.error_code = in2ulv_common::ULVErrorCode::MODULE_OK;
            }

            /* 抛出错误 */
            if (throw_module_info.error_code != in2ulv_common::ULVErrorCode::MODULE_OK)
            {
                throw_module_info.module_info = "Can't receive" + throw_module_info.module_info + "data";
                throw throw_module_info;
            }
        }

        void LocalizationNode::CheckSensorProcessStatus()
        {
            in2ulv_msgs::ModuleInfo throw_module_info;
            throw_module_info.error_code = in2ulv_common::ULVErrorCode::LOCALIZATION_PROCESS_ERROR;
            throw_module_info.module_info = "";

            /* 检查各传感器是否正常输出观测结果 */
            if (!imu_handler_ptr_->GetLatestProcessStatus(PoseSystem::Twist) ||
                !imu_handler_ptr_->GetLatestProcessStatus(PoseSystem::Acceleration))
            {
                throw_module_info.module_info = imu_handler_ptr_->GetSensorName() + " " +
                                                imu_handler_ptr_->GetProcessVerbose();
            }
            else if (!odometry_handler_ptr_->GetLatestProcessStatus(PoseSystem::Twist))
            {
                throw_module_info.module_info = odometry_handler_ptr_->GetSensorName() + " " +
                                                odometry_handler_ptr_->GetProcessVerbose();
            }
            else if (!ins_handler_ptr_->GetLatestProcessStatus(PoseSystem::Pose) ||
                     !ins_handler_ptr_->GetLatestProcessStatus(PoseSystem::Twist))
            {
                throw_module_info.module_info = ins_handler_ptr_->GetSensorName() + " " +
                                                ins_handler_ptr_->GetProcessVerbose();
            }
            else if (!lidar_handler_ptr_->GetLatestProcessStatus(PoseSystem::Pose))
            {
                throw_module_info.module_info = lidar_handler_ptr_->GetSensorName() + " " +
                                                lidar_handler_ptr_->GetProcessVerbose();
            }
            else
            {
                throw_module_info.error_code = in2ulv_common::ULVErrorCode::MODULE_OK;
            }

            /* 抛出异常 */
            if (throw_module_info.error_code != in2ulv_common::ULVErrorCode::MODULE_OK)
            {
                throw throw_module_info;
            }
        }

        void LocalizationNode::GetInitialPose(Measurement::Ptr& init_pose_measurement)
        {
            in2ulv_msgs::ModuleInfo throw_module_info;
            throw_module_info.error_code = in2ulv_common::ULVErrorCode::LOCALIZATION_INIT_ERROR;
            throw_module_info.module_info = "";

            if (use_ins_init_)
            {
                /* 用 INS 获取初始位姿 */
                auto ins_pose_measurement = std::make_shared<Measurement>();
                if (!ins_handler_ptr_->ProcessData(ins_pose_measurement, PoseSystem::Pose))
                {
                    throw_module_info.module_info = ins_handler_ptr_->GetProcessVerbose();
                    throw throw_module_info;
                }

                /* 利用初始位姿进行激光雷达匹配，保证激光雷达初始匹配正确 */
                /* 将观测结果转换为 Eigen::Isometry3d */
                auto ins_pose = TransformPoseVector(ins_pose_measurement->measurement_, Eigen::Isometry3d::Identity());
                if (!lidar_handler_ptr_->ProcessData(init_pose_measurement, PoseSystem::Pose, ins_pose))
                {
                    throw_module_info.module_info = lidar_handler_ptr_->GetProcessVerbose();
                    throw throw_module_info;
                }
            }
            else
            {
                double min_score = std::numeric_limits<double>::max();
                int min_index = 0;
                bool is_useful = false;
                Measurement::Ptr pose_measurement = std::make_shared<Measurement>();

                for (int i = 0; i < default_init_poses_.size(); i++)
                {
                    if (lidar_handler_ptr_->ProcessData(pose_measurement, PoseSystem::Pose, default_init_poses_[i]))
                    {
                        is_useful = true;
                        double current_score = lidar_handler_ptr_->GetFitnessScore();
                        ROS_INFO_STREAM("[Localization] Init pose " << i << " score: " << current_score);
                        if (current_score < min_score)
                        {
                            min_index = i;
                            min_score = current_score;
                            *init_pose_measurement = *pose_measurement; // 值拷贝
                        }
                    }
                }

                if (!is_useful)
                {
                    throw_module_info.module_info = "All default init pose is invalid";
                    throw throw_module_info;
                }
                else
                {
                    ROS_INFO_STREAM("[Localization] The chosen init pose index: " << min_index << " min score: " << min_score);
                }
            }

            /* 修改话题名，使得滤波器可以识别 */
            init_pose_measurement->topic_name_ = "init_pose";
        }
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "localization_node");
    inin::in2ulv_localization::LocalizationNode localization_node;

    std::thread loop_execute(&inin::in2ulv_localization::LocalizationNode::LoopRun, &localization_node);    // 开启定位节点主循环

    ros::AsyncSpinner async_spinner(3);     // 一共有5个回调函数，但是其中有3个比较快，所以一共只开3个线程
    async_spinner.start();

    /* 等待接收 ctrl-c 指令 */
    ros::waitForShutdown();

    /* 开始关闭主循环线程并退出 */
    localization_node.ShutDownMainThread();
    loop_execute.join();    // 等待主循环线程关闭

    ROS_INFO("[Localization] Localization node shut down.");

    return EXIT_SUCCESS;
}
