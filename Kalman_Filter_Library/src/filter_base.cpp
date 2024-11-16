/**
 * @file filter_base.cpp
 * @brief 卡尔曼滤波代码实现的一般结构
 * @details 包含卡尔曼滤波器的一般结构、观测数据和控制数据的一般结构
 * @author Beta-Tao
 * @date 2022-03-27
 */

#include "Kalman_Filter_Library/filter_base.h"

namespace KalmanFilter
{
    FilterBase::FilterBase(int state_size) :
        initialized_(false),
        state_size_(state_size),
//        use_dynamic_process_noise_covariance_(false),
        last_measurement_time_(0.0),
        predicted_state_(state_size),
        state_(state_size),
        estimate_covariance_(state_size, state_size),
        covariance_epsilon_(state_size, state_size),
        process_noise_covariance_(state_size, state_size),
//        dynamic_process_noise_covariance_(state_size, state_size),
        transfer_function_(state_size, state_size),
        transfer_function_jacobian_(state_size, state_size),
        debug_stream_(nullptr),
        debug_(false)
    {
        Reset();
    }

    void FilterBase::Reset()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);

        /* 初始未初始化 */
        initialized_ = false;

        /* 清空状态量 */
        predicted_state_.setZero();
        state_.setZero();

        /* 设置状态估计协方差 */
        /* 滤波器在初始状态需要快速接受测量值，故状态估计的协方差需要是一个较大的值 */
        estimate_covariance_.setIdentity();
//        estimate_covariance_ *= 1e-9;
        estimate_covariance_ *= 1e4;

        /* 设置用于维持协方差正定的小值 */
        covariance_epsilon_.setIdentity();
        covariance_epsilon_ *= 0.001;

        /* 设置默认的过程噪声 */
        process_noise_covariance_.setIdentity();
        process_noise_covariance_ *= 0.01;
//        dynamic_process_noise_covariance_ = process_noise_covariance_;

        /* 设置状态转移矩阵中不变的值 */
        transfer_function_.setIdentity();

        /* 清空雅可比矩阵 */
        transfer_function_jacobian_.setZero();
    }

    void FilterBase::ProcessMeasurement(const Measurement& measurement)
    {
        KF_DEBUG("\nFilterBase::ProcessMeasurement [" << measurement.topic_name_ << "]\n");

        double delta_time;    // 暂存时间差

        /* 如果已经初始化完成，则进入观测修正环节 */
        /* 否则将状态量和协方差设置为观测结果 */
        if (initialized_)
        {
            delta_time = measurement.time_ - GetLastMeasurementTime();
            KF_DEBUG("FilterBase::ProcessMeasurement [" << measurement.topic_name_ << "]\n"
                         << "delta time: " << delta_time << "\n");

            /* 如果该观测结果比上次观测结果新，则先预测到该时间点，再进行观测修正 */
            if (delta_time > 0)
            {
                ValidateDeltaTime(delta_time);
                Predict(measurement.time_, delta_time);

                /* 只有推动预测的观测量才会被记录时间 */
                SetLastMeasurementTime(measurement.time_);
            }

            /* 如果该观测结果确实更旧，则没有办法，只能强行修正 */
            Correct(measurement);
        }
        else
        {
            KF_DEBUG("First receive measurement, initializing kalman filter \n");

            /* 观测结果有 update_vector_ 变量需要处理，即决定哪些观测量进入滤波器 */
            auto state = GetState();
            auto estimate_covariance = GetEstimateCovariance();
            size_t length = measurement.update_vector_.size();
            for (int i = 0; i < length; i++)
            {
                state(i) = measurement.update_vector_[i] ? measurement.measurement_[i] : state(i);
            }
            for (int i = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    estimate_covariance(i, j) = measurement.update_vector_[i] && measurement.update_vector_[j] ?
                                                measurement.covariance_(i, j) :
                                                estimate_covariance(i, j);
                }
            }
            KF_DEBUG("Initial state is: \n" << state.transpose() << "\n");
            /* 将结果传入滤波器 */
            SetState(state);
            SetEstimateCovariance(estimate_covariance);
            SetInitializedStatus(true);
            SetLastMeasurementTime(measurement.time_);  // 初始时间记录
        }
    }

    void FilterBase::ValidateDeltaTime(double& delta_time)
    {
        if (delta_time > 100000.0)
        {
            KF_DEBUG("Delta time is very large. Suspect playing from bag file. Reset delta time to 0.01\n");

            delta_time = 0.01;
        }
    }

    bool FilterBase::GetInitializedStatus()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return initialized_;
    }

    const double& FilterBase::GetLastMeasurementTime()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return last_measurement_time_;
    }

    const Eigen::VectorXd& FilterBase::GetState()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return state_;
    }

    const Eigen::MatrixXd& FilterBase::GetEstimateCovariance()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return estimate_covariance_;
    }

    const Eigen::MatrixXd& FilterBase::GetProcessNoiseCovariance()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return process_noise_covariance_;
    }

    bool FilterBase::GetDebug()
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        return debug_;
    }

    void FilterBase::SetDebug(bool debug, std::ostream* out_stream)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        if (debug)
        {
            if (out_stream != nullptr)
            {
                debug_ = true;
                debug_stream_ = out_stream;
            }
            else
            {
                debug_ = false;
            }
        }
        else
        {
            debug_ = false;
        }
    }

    void FilterBase::SetLastMeasurementTime(const double& last_measurement_time)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        last_measurement_time_ = last_measurement_time;
    }

    void FilterBase::SetState(const Eigen::VectorXd& state)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        state_ = state;
    }

    void FilterBase::SetEstimateCovariance(const Eigen::MatrixXd& estimate_covariance)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        estimate_covariance_ = estimate_covariance;
    }

    void FilterBase::SetProcessNoiseCovariance(const Eigen::MatrixXd& process_noise_covariance)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        process_noise_covariance_ = process_noise_covariance;
    }

    void FilterBase::SetInitializedStatus(const bool& initialized)
    {
        std::lock_guard<std::mutex> lock_guard(filter_mutex_);
        initialized_ = initialized;
    }
}
