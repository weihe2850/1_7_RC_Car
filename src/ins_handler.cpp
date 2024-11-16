/**
 * @file ins_handler.cpp
 * @brief 处理 INS 数据
 * @details 
 * @author Beta-Tao
 * @date 2022-04-08
 */

#include "in2ulv_localization/ins_handler.h"

namespace inin
{
    namespace in2ulv_localization
    {
        INSHandler::INSHandler() :
            SensorHandler<in2ulv_msgs::INSStdMsgConstPtr>("ins")
        {
            gnss_position_flag_ = INSFlag::UNDEFINED;
            gnss_heading_flag_ = INSFlag::UNDEFINED;
            gnss_num_sv_ = 0;
        }

        void INSHandler::SetData(const in2ulv_msgs::INSStdMsgConstPtr& data)
        {
            /* 复制一次结果 */
            std::lock_guard<std::mutex> lock_guard(sensor_data_mutex_);
            sensor_data_ptr_ = data;

            /* 记录重要指标 */
            gnss_num_sv_ = data->INS_NumSV;
            if (INSFlagName.count(static_cast<INSFlag>(data->INS_GpsFlag_Pos)))
            {
                gnss_position_flag_ = static_cast<INSFlag>(data->INS_GpsFlag_Pos);
            }
            else
            {
                gnss_position_flag_ = INSFlag::UNDEFINED;
            }
            if (INSFlagName.count(static_cast<INSFlag>(data->INS_GpsFlag_Heading)))
            {
                gnss_heading_flag_ = static_cast<INSFlag>(data->INS_GpsFlag_Heading);
            }
            else
            {
                gnss_heading_flag_ = INSFlag::UNDEFINED;
            }
        }

        bool INSHandler::ProcessPose(Measurement::Ptr& pose_measurement, const in2ulv_msgs::INSStdMsgConstPtr& sensor_data_ptr,
                                     const Eigen::Isometry3d& pose_estimate)
        {
            /* 经纬度转换至 UTM */
            double utm_north, utm_east;
            std::string utm_zone;
            gps_common::LLtoUTM(sensor_data_ptr->INS_Latitude, sensor_data_ptr->INS_Longitude, utm_north, utm_east, utm_zone);

            /* 设置观测量信息 */
            pose_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            pose_measurement->topic_name_ = sensor_name_ + "_pose";
            pose_measurement->update_vector_.resize(KalmanFilter::PoseSystem::STATE_SIZE, static_cast<int>(false));
            for (int i = PoseSystem::POSE_OFFSET; i < PoseSystem::POSE_SIZE; i++)
            {
                pose_measurement->update_vector_[i] = static_cast<int>(true);
            }
            /* 设置观测结果和方差 */
            pose_measurement->measurement_.setZero(KalmanFilter::PoseSystem::STATE_SIZE);
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberX] = utm_east;
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberY] = utm_north;
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberZ] = sensor_data_ptr->INS_LocatHeight;
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberRoll] = sensor_data_ptr->INS_RollAngle;
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberPitch] = sensor_data_ptr->INS_PitchAngle;
            /* Yaw 轴需要单独处理，因为 UTM 坐标系下 Yaw 轴的零点应为 X 轴，但 INS 中朝向角零点为北(Y 轴)，此处需要旋转一下 */
            double yaw = sensor_data_ptr->INS_HeadingAngle + M_PI / 2;
            KalmanFilter::MappingRotation(yaw);
            pose_measurement->measurement_[KalmanFilter::PoseSystem::StateMemberYaw] = yaw;
            pose_measurement->covariance_ = Eigen::MatrixXd(KalmanFilter::PoseSystem::STATE_SIZE,
                                                            KalmanFilter::PoseSystem::STATE_SIZE).setIdentity();
            pose_measurement->covariance_.block<PoseSystem::POSITION_SIZE, PoseSystem::POSITION_SIZE>
                (PoseSystem::StateMemberX, PoseSystem::StateMemberX) *= 1;
            pose_measurement->covariance_.block<PoseSystem::ORIENTATION_SIZE, PoseSystem::ORIENTATION_SIZE>
                (PoseSystem::StateMemberRoll, PoseSystem::StateMemberRoll) *= 0.1;
            pose_measurement->mahalanobis_thresh_ = 3;

            return true;
        }

        bool INSHandler::ProcessTwist(Measurement::Ptr& twist_measurement, const in2ulv_msgs::INSStdMsgConstPtr& sensor_data_ptr,
                                      const Eigen::Isometry3d& pose_estimate)
        {
            /* 如果没有使用其他 Process 函数生成过位姿结果，则需要生成一次 */
            if (GetLatestMeasurement(PoseSystem::Pose) != nullptr &&
                sensor_data_ptr->header.stamp.toSec() != GetLatestMeasurement(PoseSystem::Pose)->time_)
            {
                auto pose_measurement = std::make_shared<KalmanFilter::Measurement>();
                ProcessPose(pose_measurement, sensor_data_ptr, pose_estimate);
            }

            /* 设置观测量信息 */
            twist_measurement->time_ = sensor_data_ptr->header.stamp.toSec();
            twist_measurement->topic_name_ = sensor_name_ + "_twist";
            twist_measurement->update_vector_.resize(KalmanFilter::PoseSystem::STATE_SIZE, static_cast<int>(false));
            Eigen::VectorXd measurement = Eigen::VectorXd::Zero(KalmanFilter::PoseSystem::STATE_SIZE);  // UTM 坐标
            twist_measurement->measurement_.setZero(KalmanFilter::PoseSystem::STATE_SIZE);
            /* 位置差分观测结果作为速度观测 */
            if (GetLatestMeasurement(PoseSystem::Pose) == nullptr ||
                GetPreviousMeasurement(PoseSystem::Pose) == nullptr)
            {
                SetProcessVerbose(sensor_name_ + " process twist error: pose measurement empty.");
                return false;
            }
            double delta_time = GetLatestMeasurement(PoseSystem::Pose)->time_ -
                                GetPreviousMeasurement(PoseSystem::Pose)->time_;
            if (delta_time != 0.0)
            {
                for (int i = 0; i < KalmanFilter::PoseSystem::TWIST_SIZE; i++)
                {
                    int index = i + KalmanFilter::PoseSystem::TWIST_OFFSET;     // 差分值索引
                    int integral_index = i + KalmanFilter::PoseSystem::POSE_OFFSET; // 差分值对应积分值索引
                    twist_measurement->update_vector_[index] = static_cast<int>(true);

                    /* 计算差分结果 */
                    double diff = GetLatestMeasurement(PoseSystem::Pose)->measurement_[integral_index] -
                                  GetPreviousMeasurement(PoseSystem::Pose)->measurement_[integral_index];   // 积分值相减
                    if (integral_index == KalmanFilter::PoseSystem::StateMemberRoll ||
                        integral_index == KalmanFilter::PoseSystem::StateMemberPitch ||
                        integral_index == KalmanFilter::PoseSystem::StateMemberYaw)
                    {
                        KalmanFilter::MappingRotation(diff);
                    }
                    measurement[index] = diff / delta_time;  // 差值除时间作为差分值
                }
                /* 将 UTM 下速度转换为载体坐标系下速度 */
                /* 线速度和角速度需要分开进行 */
                twist_measurement->measurement_.segment(KalmanFilter::PoseSystem::LINEAR_V_OFFSET,
                                                        KalmanFilter::PoseSystem::LINEAR_V_SIZE) =
                    pose_estimate.rotation().inverse() * measurement.segment(KalmanFilter::PoseSystem::LINEAR_V_OFFSET,
                                                                             KalmanFilter::PoseSystem::LINEAR_V_SIZE);
                twist_measurement->measurement_.segment(KalmanFilter::PoseSystem::ANGULAR_V_OFFSET,
                                                        KalmanFilter::PoseSystem::ANGULAR_V_SIZE) =
                    pose_estimate.rotation().inverse() * measurement.segment(KalmanFilter::PoseSystem::ANGULAR_V_OFFSET,
                                                                             KalmanFilter::PoseSystem::ANGULAR_V_SIZE);
                twist_measurement->covariance_ = Eigen::MatrixXd(KalmanFilter::PoseSystem::STATE_SIZE,
                                                                 KalmanFilter::PoseSystem::STATE_SIZE).setIdentity();
                twist_measurement->mahalanobis_thresh_ = 10;
            }
            else
            {
                SetProcessVerbose(sensor_name_ + " process twist error: delta time is zero.");
                return false;
            }

            return true;
        }

        const INSFlag& INSHandler::GetGNSSPositionFlag() const
        {
            return gnss_position_flag_;
        }

        const INSFlag& INSHandler::GetGNSSHeadingFlag() const
        {
            return gnss_heading_flag_;
        }

        const int& INSHandler::GetGNSSNumSV() const
        {
            return gnss_num_sv_;
        }
    }
}
