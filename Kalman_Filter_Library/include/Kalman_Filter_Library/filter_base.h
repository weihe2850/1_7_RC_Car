/**
 * @file filter_base.h
 * @brief 卡尔曼滤波代码实现的一般结构
 * @details 包含卡尔曼滤波器的一般结构、观测数据和控制数据的一般结构
 * 未添加控制项
 * @author Beta-Tao
 * @date 2022-03-27
 */

#ifndef KALMAN_FILTER_LIBRARY_FILTER_BASE_H
#define KALMAN_FILTER_LIBRARY_FILTER_BASE_H

#include "filter_common.h"

#include <Eigen/Dense>

#include <string>
#include <limits>
#include <vector>
#include <ostream>
#include <mutex>

namespace KalmanFilter
{
    /**
     * @brief 滤波器通用类
     */
    class FilterBase
    {
    public:
        EIGEN_MAKE_ALIGNED_OPERATOR_NEW

        /**
         * @brief FilterBase 类 构造函数
         * @param[in] state_size 状态量的维数
         */
        explicit FilterBase(int state_size);

        /**
         * @brief FilterBase 类 析构函数
         */
        virtual ~FilterBase() = default;

        /**
         * @brief 重置滤波器
         */
        void Reset();

        /**
         * @brief 状态预测函数
         * @details 利用运动模型向前推算状态和状态协方差矩阵
         * @details 该函数必须被子类重写
         * @param[in] reference_time 做出预测的时间，用于控制项
         * @param[in] delta_time 预测的时间步长
         * @warning 重载时注意对 filter_mutex_ 进行操作
         */
        virtual void Predict(const double& reference_time, const double& delta_time) = 0;

        /**
         * @brief 观测修正函数
         * @details 利用观测模型(调整为状态量的线性函数)修正当前系统状态量
         * @details 该函数必须被子类重写
         * @param[in] measurement 需要与状态估计值融合的观测结果
         * @warning 重载时注意对 filter_mutex_ 进行操作
         */
        virtual void Correct(const Measurement& measurement) = 0;

        /**
         * @brief 处理观测结果，分为未初始化和已初始化
         * @details 未初始化时：利用该观测结果初始化状态量、协方差及 last_measurement_time_(上次观测时间)
         * @details 已初始化时：如果该观测时间大于上次观测时间，则 Predict 和 Correct，否则直接 Correct
         * @param[in] measurement 需要进入滤波器的观测量
         */
        virtual void ProcessMeasurement(const Measurement& measurement);

        // TODO computeDynamicProcessNoiseCovariance(const Eigen::VectorXd &state, const double delta)

        /**
         * @brief 获取滤波器初始化状态
         * @retval true 滤波器已初始化
         * @retval false 滤波器未初始化
         */
        bool GetInitializedStatus();

        /**
         * @brief 获取最近观测时间
         * @return 滤波器最近的观测时间
         */
        const double& GetLastMeasurementTime();

        /**
         * @brief 设置最近的观测时间
         * @param[in] last_measurement_time 滤波器最近的观测时间
         */
        void SetLastMeasurementTime(const double& last_measurement_time);

        /**
         * @brief 获取滤波器当前状态变量
         * @details Correct 之前和滤波器预测的状态量一致
         * Correct 之后则为修正后的状态量
         * @return 状态量的 const reference
         */
        const Eigen::VectorXd& GetState();

        /**
         * @brief 设置滤波器当前状态变量
         * @details 往往和 SetEstimateCovariance 配合使用
         * @param[in] state 滤波器当前状态变量
         */
        void SetState(const Eigen::VectorXd& state);

        /**
         * @brief 获取当前状态量的协方差
         * @return 当前状态量协方差的 const reference
         */
        const Eigen::MatrixXd& GetEstimateCovariance();

        /**
         * @brief 设置当前状态量的协方差
         * @details 往往和 SetState 配合使用
         * @param[in] estimate_covariance 当前状态量的协方差
         */
        void SetEstimateCovariance(const Eigen::MatrixXd& estimate_covariance);

        /**
         * @brief 获取滤波器的过程噪声协方差
         * @return 过程噪声协方差的 const reference
         */
        const Eigen::MatrixXd& GetProcessNoiseCovariance();

        /**
         * @brief 设置滤波器的过程噪声协方差
         * @details 一般在程序初始化的时候从参数表中读数并写入
         * @param[in] process_noise_covariance 过程噪声协方差
         */
        void SetProcessNoiseCovariance(const Eigen::MatrixXd& process_noise_covariance);

        /**
         * @brief 获取滤波器 Debug 模式激活状态
         * @retval true Debug 模式已激活
         * @retval false Debug 模式未激活
         */
        bool GetDebug();

        /**
         * @brief 设置滤波器 Debug 模式激活状态
         * @details 只有 debug 参数被设置为 true 并且 out_stream 不为空时，Debug 模式才会正常开启
         * @param[in] debug Debug 模式是否被激活
         * @param[in] out_stream Debug 信息的输出流
         */
        void SetDebug(bool debug, std::ostream* out_stream = nullptr);

        /**
         * @brief 验证时间差值是否有效
         * @details 该函数仅用于验证 measurement.time_ 和 last_measurement_time_ 之间的时间差
         * 如果该时间差值大于 100000 ，则认为重新开启了数据包，并将其转换为有效的数据(0.01)
         * 该函数在程序正式运行时还可以处理初始零时刻到观测量时间戳的时间阶跃问题
         * @param[in,out] delta_time 时间差值
         */
        void ValidateDeltaTime(double& delta_time);

    protected:

        /**
         * @brief 设置初始化标志位
         * @param[in] initialized 初始化状态
         */
        void SetInitializedStatus(const bool& initialized);

        /// @brief 滤波器是否初始化
        /// @details 一般使用首次测量值来初始化滤波器状态量
        /// 故该值在滤波器接收到首次测量值后被置位
        bool initialized_;

        // 是否使用控制项
//        bool use_control_;

        // 是否使用动态过程噪声 \n
        // 当系统静止时，该项用于限制状态协方差的增长
//        bool use_dynamic_process_noise_covariance_;

        /// @brief 上次观测时间
        /// @details 只记录更新的观测时间，不记录滞后的观测时间
        /// 该变量指示了当前状态量对应的时间
        /// 不观测只预测时则记录预测时间相同
        double last_measurement_time_;

        // 上次控制时间
//        double last_control_time_;

        // 用于决定哪些控制量需要进入滤波器
//        std::vector<int> control_update_vector_;

        /// 状态量的维数
        int state_size_;

        /// @brief 上次预测(注意不含修正)的状态量
        Eigen::VectorXd predicted_state_;

        /// @brief 当前动态系统估计的状态量
        /// @details 可能经过了观测修正结果，也可能只是预测得到
        /// 状态量的时间由 last_measurement_time_ 来得知
        Eigen::VectorXd state_;

        /// @brief 对应当前动态系统状态量 state_ 的协方差
        Eigen::MatrixXd estimate_covariance_;

        /// @brief 协方差矩阵可能会很不稳定
        /// @details 可以在每次迭代中为其添加如下的一个小量来保持其正定性
        Eigen::MatrixXd covariance_epsilon_;

        /// @brief 过程噪声
        /// @details 使用状态转移矩阵进行预测时，这个矩阵(乘上 deltaT)来表示预测的误差
        Eigen::MatrixXd process_noise_covariance_;

        // 动态过程噪声 \n
        // 该值会在 use_dynamic_process_noise_covariance_ 为 true 时不断更新
//        Eigen::MatrixXd dynamic_process_noise_covariance_;

        /// @brief 卡尔曼滤波器的状态转移矩阵
        /// @details 该矩阵的每一行都表示一个函数，并且为了保证观测修正部分的简洁，此处将状态转移矩阵的表示写的复杂了很多，用了很多的三角函数
        /// @details 用于计算的临时变量
        Eigen::MatrixXd transfer_function_;

        /// @brief transfer_function_ 对应的雅可比矩阵
        /// @details 为了保证观测修正部分的简介，状态转移矩阵使用了很多的三角函数，使得其为非线性。故此处选择将状态转移矩阵线性化
        /// @details 用于计算的临时变量
        Eigen::MatrixXd transfer_function_jacobian_;

        /// @brief 调试输出的输出流
        std::ostream* debug_stream_;

        /// @brief 滤波器的数据锁
        std::mutex filter_mutex_;

    private:

        /// @brief 滤波器是否激活 debug 模式
        bool debug_;
    };
}

#endif //KALMAN_FILTER_LIBRARY_FILTER_BASE_H
