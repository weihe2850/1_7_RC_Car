/**
 * @file ekf_pose_system.cpp
 * @brief 
 * @details 
 * @author Beta-Tao
 * @date 2022-03-30
 */

#include "Kalman_Filter_Library/ekf_pose_system.h"

namespace KalmanFilter
{
    using namespace PoseSystem;

    EkfPoseSystem::EkfPoseSystem() :
        FilterBase(PoseSystem::STATE_SIZE)
    {
        /* 重新设置过程噪声 */
        auto process_noise_covariance = GetProcessNoiseCovariance();
        process_noise_covariance.setZero();
        process_noise_covariance(StateMemberX, StateMemberX) = 0.05;
        process_noise_covariance(StateMemberY, StateMemberY) = 0.05;
        process_noise_covariance(StateMemberZ, StateMemberZ) = 0.06;
        process_noise_covariance(StateMemberRoll, StateMemberRoll) = 0.03;
        process_noise_covariance(StateMemberPitch, StateMemberPitch) = 0.03;
        process_noise_covariance(StateMemberYaw, StateMemberYaw) = 0.06;
        process_noise_covariance(StateMemberVx, StateMemberVx) = 0.025;
        process_noise_covariance(StateMemberVy, StateMemberVy) = 0.025;
        process_noise_covariance(StateMemberVz, StateMemberVz) = 0.04;
        process_noise_covariance(StateMemberVroll, StateMemberVroll) = 0.01;
        process_noise_covariance(StateMemberVpitch, StateMemberVpitch) = 0.01;
        process_noise_covariance(StateMemberVyaw, StateMemberVyaw) = 0.02;
        process_noise_covariance(StateMemberAx, StateMemberAx) = 0.01;
        process_noise_covariance(StateMemberAy, StateMemberAy) = 0.01;
        process_noise_covariance(StateMemberAz, StateMemberAz) = 0.015;
        SetProcessNoiseCovariance(process_noise_covariance);
    }

    void EkfPoseSystem::Predict(const double& reference_time, const double& delta_time)
    {
        /* 将滤波器状态暂存进临时变量 */
        auto state = GetState();
        auto estimate_covariance = GetEstimateCovariance();

        KF_DEBUG("\n---- EkfPoseSystem predict [0] ----\n" << "delta time is: " << delta_time << "\n"
                     << "state is: \n" << state.transpose() << "\n");

        /* 暂存一些变量 */
        double roll = state(StateMemberRoll);
        double pitch = state(StateMemberPitch);
        double yaw = state(StateMemberYaw);
        double x_vel = state(StateMemberVx);
        double y_vel = state(StateMemberVy);
        double z_vel = state(StateMemberVz);
        double pitch_vel = state(StateMemberVpitch);
        double yaw_vel = state(StateMemberVyaw);
        double x_acc = state(StateMemberAx);
        double y_acc = state(StateMemberAy);
        double z_acc = state(StateMemberAz);

        /* 提前计算一些三角函数 */
        double sy = sin(yaw);
        double cy = cos(yaw);

        double sp = sin(pitch);
        double cp = cos(pitch);
        double cp_inv = 1.0 / cp;
        double tp = sp * cp_inv;

        double sr = sin(roll);
        double cr = cos(roll);

        /* 计算状态转移方程，注意 b 系到 n 系的旋转变换 */
        /* 父类中状态转移矩阵已经初始化为单位矩阵 */
        transfer_function_(StateMemberX, StateMemberVx) = cy * cp * delta_time;
        transfer_function_(StateMemberX, StateMemberVy) = (cy * sp * sr - sy * cr) * delta_time;
        transfer_function_(StateMemberX, StateMemberVz) = (cy * sp * cr + sy * sr) * delta_time;
        transfer_function_(StateMemberX, StateMemberAx) =
            0.5 * transfer_function_(StateMemberX, StateMemberVx) * delta_time;
        transfer_function_(StateMemberX, StateMemberAy) =
            0.5 * transfer_function_(StateMemberX, StateMemberVy) * delta_time;
        transfer_function_(StateMemberX, StateMemberAz) =
            0.5 * transfer_function_(StateMemberX, StateMemberVz) * delta_time;

        transfer_function_(StateMemberY, StateMemberVx) = sy * cp * delta_time;
        transfer_function_(StateMemberY, StateMemberVy) = (sy * sp * sr + cy * cr) * delta_time;
        transfer_function_(StateMemberY, StateMemberVz) = (sy * sp * cr - cy * sr) * delta_time;
        transfer_function_(StateMemberY, StateMemberAx) =
            0.5 * transfer_function_(StateMemberY, StateMemberVx) * delta_time;
        transfer_function_(StateMemberY, StateMemberAy) =
            0.5 * transfer_function_(StateMemberY, StateMemberVy) * delta_time;
        transfer_function_(StateMemberY, StateMemberAz) =
            0.5 * transfer_function_(StateMemberY, StateMemberVz) * delta_time;

        transfer_function_(StateMemberZ, StateMemberVx) = -sp * delta_time;
        transfer_function_(StateMemberZ, StateMemberVy) = cp * sr * delta_time;
        transfer_function_(StateMemberZ, StateMemberVz) = cp * cr * delta_time;
        transfer_function_(StateMemberZ, StateMemberAx) =
            0.5 * transfer_function_(StateMemberZ, StateMemberVx) * delta_time;
        transfer_function_(StateMemberZ, StateMemberAy) =
            0.5 * transfer_function_(StateMemberZ, StateMemberVy) * delta_time;
        transfer_function_(StateMemberZ, StateMemberAz) =
            0.5 * transfer_function_(StateMemberZ, StateMemberVz) * delta_time;

        transfer_function_(StateMemberRoll, StateMemberVroll) = delta_time;
        transfer_function_(StateMemberRoll, StateMemberVpitch) = sr * tp * delta_time;
        transfer_function_(StateMemberRoll, StateMemberVyaw) = cr * tp * delta_time;

        transfer_function_(StateMemberPitch, StateMemberVpitch) = cr * delta_time;
        transfer_function_(StateMemberPitch, StateMemberVyaw) = -sr * delta_time;

        transfer_function_(StateMemberYaw, StateMemberVpitch) = sr * cp_inv * delta_time;
        transfer_function_(StateMemberYaw, StateMemberVyaw) = cr * cp_inv * delta_time;

        transfer_function_(StateMemberVx, StateMemberAx) = delta_time;
        transfer_function_(StateMemberVy, StateMemberAy) = delta_time;
        transfer_function_(StateMemberVz, StateMemberAz) = delta_time;

        /* 计算状态转移方程的 Jacobian 矩阵 */
        double x_coeff, y_coeff, z_coeff;
        double oneHalfATSquared = 0.5 * delta_time * delta_time;

        y_coeff = cy * sp * cr + sy * sr;
        z_coeff = -cy * sp * sr + sy * cr;
        double dFx_dR = (y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;
        double dFR_dR = 1.0 + (cr * tp * pitch_vel - sr * tp * yaw_vel) * delta_time;

        x_coeff = -cy * sp;
        y_coeff = cy * cp * sr;
        z_coeff = cy * cp * cr;
        double dFx_dP = (x_coeff * x_vel + y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (x_coeff * x_acc + y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;
        double dFR_dP = (cp_inv * cp_inv * sr * pitch_vel + cp_inv * cp_inv * cr * yaw_vel) * delta_time;

        x_coeff = -sy * cp;
        y_coeff = -sy * sp * sr - cy * cr;
        z_coeff = -sy * sp * cr + cy * sr;
        double dFx_dY = (x_coeff * x_vel + y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (x_coeff * x_acc + y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;

        y_coeff = sy * sp * cr - cy * sr;
        z_coeff = -sy * sp * sr - cy * cr;
        double dFy_dR = (y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;
        double dFP_dR = (-sr * pitch_vel - cr * yaw_vel) * delta_time;

        x_coeff = -sy * sp;
        y_coeff = sy * cp * sr;
        z_coeff = sy * cp * cr;
        double dFy_dP = (x_coeff * x_vel + y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (x_coeff * x_acc + y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;

        x_coeff = cy * cp;
        y_coeff = cy * sp * sr - sy * cr;
        z_coeff = cy * sp * cr + sy * sr;
        double dFy_dY = (x_coeff * x_vel + y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (x_coeff * x_acc + y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;

        y_coeff = cp * cr;
        z_coeff = -cp * sr;
        double dFz_dR = (y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;
        double dFY_dR = (cr * cp_inv * pitch_vel - sr * cp_inv * yaw_vel) * delta_time;

        x_coeff = -cp;
        y_coeff = -sp * sr;
        z_coeff = -sp * cr;
        double dFz_dP = (x_coeff * x_vel + y_coeff * y_vel + z_coeff * z_vel) * delta_time +
                        (x_coeff * x_acc + y_coeff * y_acc + z_coeff * z_acc) * oneHalfATSquared;
        double dFY_dP = (sr * tp * cp_inv * pitch_vel + cr * tp * cp_inv * yaw_vel) * delta_time;

        /* Jacobian 中大部分元素和原矩阵相同 */
        transfer_function_jacobian_ = transfer_function_;

        transfer_function_jacobian_(StateMemberX, StateMemberRoll) = dFx_dR;
        transfer_function_jacobian_(StateMemberX, StateMemberPitch) = dFx_dP;
        transfer_function_jacobian_(StateMemberX, StateMemberYaw) = dFx_dY;

        transfer_function_jacobian_(StateMemberY, StateMemberRoll) = dFy_dR;
        transfer_function_jacobian_(StateMemberY, StateMemberPitch) = dFy_dP;
        transfer_function_jacobian_(StateMemberY, StateMemberYaw) = dFy_dY;

        transfer_function_jacobian_(StateMemberZ, StateMemberRoll) = dFz_dR;
        transfer_function_jacobian_(StateMemberZ, StateMemberPitch) = dFz_dP;

        transfer_function_jacobian_(StateMemberRoll, StateMemberRoll) = dFR_dR;
        transfer_function_jacobian_(StateMemberRoll, StateMemberPitch) = dFR_dP;

        transfer_function_jacobian_(StateMemberPitch, StateMemberRoll) = dFP_dR;

        transfer_function_jacobian_(StateMemberYaw, StateMemberRoll) = dFY_dR;
        transfer_function_jacobian_(StateMemberYaw, StateMemberPitch) = dFY_dP;

        KF_DEBUG("---- EkfPoseSystem predict [1] ----\n"
                     << "Transfer function is: \n" << transfer_function_ << "\n"
                     << "Transfer function Jacobian is: \n" << transfer_function_jacobian_ << "\n"
                     << "Current state is: \n" << state.transpose() << "\n");

        /* (1) 添加控制项 */

        /* (2) 预测状态量 */
        state = transfer_function_ * state;
        /* 处理欧拉角 */
        MappingRotation(state(StateMemberRoll));
        MappingRotation(state(StateMemberPitch));
        MappingRotation(state(StateMemberYaw));

        KF_DEBUG("---- EkfPoseSystem predict [2] ----\n"
                     << "Predicted state is: \n" << state.transpose() << "\n"
                     << "Current estimate covariance is: \n" << estimate_covariance << "\n");

        /* (3) 更新协方差 P = J * P * J' + Q */
        estimate_covariance =
            transfer_function_jacobian_ * estimate_covariance * transfer_function_jacobian_.transpose();
        estimate_covariance.noalias() += GetProcessNoiseCovariance() * delta_time;

        KF_DEBUG("---- EkfPoseSystem predict End ----\n"
                     << "Predicted estimate covariance is: \n" << estimate_covariance << "\n");

        /* 将结果写入滤波器 */
        SetState(state);
        SetEstimateCovariance(estimate_covariance);
    }

    void EkfPoseSystem::Correct(const Measurement& measurement)
    {
        /* 将滤波器状态暂存进临时变量 */
        auto state = GetState();
        auto estimate_covariance = GetEstimateCovariance();

        KF_DEBUG("\n---- EkfPoseSystem correct [0] ----\n"
                     << "topic is " << measurement.topic_name_ << "\n"
                     << "measurement is \n" << measurement.measurement_.transpose() << "\n"
                     << "measurement covariance is \n" << measurement.covariance_ << "\n");

        /* 检查 measurement 中的数据 */
        /* 将需要放入滤波器的数据索引存起来 */
        std::vector<int> update_indices;
        for (int i = 0; i < measurement.update_vector_.size(); i++)
        {
            if (measurement.update_vector_[i])
            {
                if (std::isnan(measurement.measurement_(i)))
                {
                    KF_DEBUG("Value at index " << i << " was nan. Excluding from update.\n");
                }
                else if (std::isinf(measurement.measurement_(i)))
                {
                    KF_DEBUG("Value at index " << i << " was inf. Excluding from update.\n");
                }
                else
                {
                    update_indices.push_back(i);
                    KF_DEBUG("Value at index " << i << " was valid.\n");
                }
            }
        }

        /* 将与该观测量相关的数据取出 */
        size_t update_size = update_indices.size();
        Eigen::VectorXd state_subset(update_size);                                  // x 状态量的子集，对应观测量
        Eigen::VectorXd measurement_subset(update_size);                            // z 观测量
        Eigen::VectorXd innovation_subset(update_size);                             // y = z - Hx 量测和预测的差值
        Eigen::MatrixXd measurement_covariance_subset(update_size, update_size);    // R 测量噪声矩阵(观测量的协方差矩阵)
        Eigen::MatrixXd measure_function(update_size, state.rows());               // H 量测方程
        Eigen::MatrixXd kalman_gain(state.rows(), update_size);                    // K 卡尔曼增益

        state_subset.setZero();
        measurement_subset.setZero();
        measurement_covariance_subset.setZero();
        measure_function.setZero();
        kalman_gain.setZero();
        innovation_subset.setZero();

        for (int i = 0; i < update_size; i++)
        {
            measurement_subset(i) = measurement.measurement_(update_indices[i]);
            state_subset(i) = state(update_indices[i]);
            /* 计算差值，注意将差值映射到 [-pi, pi] */
            innovation_subset(i) = measurement_subset(i) - state_subset(i);
            if (update_indices[i] == StateMemberRoll || update_indices[i] == StateMemberPitch ||
                update_indices[i] == StateMemberYaw)
            {
                MappingRotation(innovation_subset(i));
            }

            for (int j = 0; j < update_size; j++)
            {
                measurement_covariance_subset(i, j) = measurement.covariance_(update_indices[i], update_indices[j]);
            }
            /* 处理观测量中坏的协方差 */
            /* 这里不将它去掉，只是将其取绝对值 */
            if (measurement_covariance_subset(i, i) < 0)
            {
                KF_DEBUG("Negative covariance for index " << i << " of measurement, "
                             << "value is " << measurement_covariance_subset(i, i) << ". "
                             << "using its absolute value.\n");

                measurement_covariance_subset(i, i) = fabs(measurement_covariance_subset(i, i));
            }
            /* 如果观测量中方差特别接近0， 则卡尔曼增益的计算将会出问题，所以将其加上一个小量 */
            if (measurement_covariance_subset(i, i) < 1e-9)
            {
                KF_DEBUG("Measurement had very small error variance for index "
                             << i << ", "
                             << "add some noise to maintain stability.\n");

                measurement_covariance_subset(i, i) = 1e-9;
            }

            /* 量测方程很简单，即观测到的状态量对应位置为 1 */
            measure_function(i, update_indices[i]) = 1;
        }

        KF_DEBUG("---- EkfPoseSystem correct [1] ----\n"
                     << "Current state subset is: \n" << state_subset.transpose() << "\n"
                     << "Measurement subset is: \n" << measurement_subset.transpose() << "\n"
                     << "Innovation subset is: \n" << innovation_subset.transpose() << "\n"
                     << "Measurement covariance subset is: \n" << measurement_covariance_subset << "\n"
                     << "Measurement function is: \n" << measure_function << "\n");

        /* (1) 计算卡尔曼增益 K = (PH') / (HPH' + R) */
        Eigen::MatrixXd pht = estimate_covariance * measure_function.transpose();  // (x, i)
        Eigen::MatrixXd hphtr_inv = (measure_function * pht + measurement_covariance_subset).inverse(); // (i, i)
        kalman_gain.noalias() = pht * hphtr_inv;    // (x, i)

        /* (2) 检测测量值是否可信 */
        // TODO 为何将 HPH'+R 设置为 z 和 Hx 的协方差矩阵
        // FIXME 不同类型的状态量可能需要不同的 sigma 值，例如加速度和角速度。如何区分？
        if (CheckMahalanobisThreshold(innovation_subset, hphtr_inv, measurement.mahalanobis_thresh_))
        {
            KF_DEBUG("---- EkfPoseSystem correct check mahalanobis pass ----\n");
            /* (3) 利用卡尔曼增益，将观测量修正结果叠加在状态量上 x += K(z - Hx) */
            state.noalias() += kalman_gain * innovation_subset;

            /* (4) 更新状态量的协方差 使用 Joseph 形式来保证结果正定 P = (I - KH)P(I - KH)' + KRK' */
            Eigen::MatrixXd gain_residual = Eigen::MatrixXd::Identity(STATE_SIZE, STATE_SIZE);
            gain_residual.noalias() -= kalman_gain * measure_function;
            estimate_covariance = gain_residual * estimate_covariance * gain_residual.transpose();
            estimate_covariance.noalias() += kalman_gain * measurement_covariance_subset * kalman_gain.transpose();
        }
        else
        {
            KF_DEBUG("---- EkfPoseSystem correct check mahalanobis don't pass ----\n");
        }

        /* 处理欧拉角 */
        MappingRotation(state(StateMemberRoll));
        MappingRotation(state(StateMemberPitch));
        MappingRotation(state(StateMemberYaw));

        KF_DEBUG("---- EkfPoseSystem correct end ----\n"
                     << "Kalman gain is: \n" << kalman_gain.transpose() << "\n"
                     << "Corrected state is: \n" << state.transpose() << "\n"
                     << "Corrected estimate covariance is: \n" << estimate_covariance << "\n");

        /* 将结果写入滤波器 */
        SetState(state);
        SetEstimateCovariance(estimate_covariance);
    }

    void EkfPoseSystem::StateToPose(Eigen::Isometry3d& pose)
    {
        auto state = GetState();
        pose = Eigen::Isometry3d::Identity();
        pose.pretranslate(Eigen::Vector3d(state[StateMemberX], state[StateMemberY], state[StateMemberZ]));
        pose.rotate(Eigen::Matrix3d(Eigen::AngleAxisd(state[StateMemberYaw], Eigen::Vector3d::UnitZ()) *
                                    Eigen::AngleAxisd(state[StateMemberPitch], Eigen::Vector3d::UnitY()) *
                                    Eigen::AngleAxisd(state[StateMemberRoll], Eigen::Vector3d::UnitX())));
    }

    void EkfPoseSystem::StateToRotation(Eigen::Matrix3d& rotation)
    {
        auto state = GetState();
        rotation = Eigen::Matrix3d(Eigen::AngleAxisd(state[StateMemberYaw], Eigen::Vector3d::UnitZ()) *
                                   Eigen::AngleAxisd(state[StateMemberPitch], Eigen::Vector3d::UnitY()) *
                                   Eigen::AngleAxisd(state[StateMemberRoll], Eigen::Vector3d::UnitX()));
    }
}
