/**
 * @file filter_common.h
 * @brief 卡尔曼滤波相关的常量定义
 * 包含观测量结构体、状态量结构体、状态变量枚举类型，控制变量枚举类型和各种常量定义
 * @author Beta-Tao
 * @date 2022-03-27
 */

#ifndef KALMAN_FILTER_LIBRARY_FILTER_COMMON_H
#define KALMAN_FILTER_LIBRARY_FILTER_COMMON_H

#include <Eigen/Core>
#include <vector>
#include <memory>

#define KF_DEBUG(msg) if (GetDebug()) *debug_stream_ << msg

namespace KalmanFilter
{
    /**
     * @brief 用于存储观测结果的结构体
     * 观测量的通用单位为 米(meters) 和 弧度(radians)
     * 观测时间保存真实值，单位为 秒(seconds)
     */
    struct Measurement
    {
        EIGEN_MAKE_ALIGNED_OPERATOR_NEW

        typedef std::shared_ptr<Measurement> Ptr;

        Measurement() :
            mahalanobis_thresh_(std::numeric_limits<double>::max()),
            time_(0.0)
        {
        }

        /* 下述两个重载方法用于堆排序 */
        bool operator () (const Measurement& a, const Measurement& b) const
        {
            return a.time_ > b.time_;
        }

        bool operator () (const Measurement::Ptr& a, const Measurement::Ptr& b) const
        {
            return a->time_ > b->time_;
        }

        /// 以 sigma 的数量表示的马式距离阈值
        double mahalanobis_thresh_;

        /// 从某个时间点开始的真实的时间，e.g. 动态系统开始运行的时间
        double time_;

        /// 该观测结果对应的话题名
        /// TODO 为新观测结果捕获先前的状态量
        std::string topic_name_;

        /// 用于决定哪些观测量需要进入滤波器
        std::vector<int> update_vector_;

        /// 观测结果
        Eigen::VectorXd measurement_;

        /// 观测协方差
        Eigen::MatrixXd covariance_;
    };

    /**
     * @brief 用于存储滤波器数据的结构体
     * 该结构体用于记录滤波器历史数据
     * 状态量的通用单位为 米(meters) 和 弧度(radians)
     * 时间保存真实值，单位为 秒(seconds)
     */
    struct FilterState
    {
        EIGEN_MAKE_ALIGNED_OPERATOR_NEW

        typedef std::shared_ptr<FilterState> Ptr;

        /**
         * @brief 构造函数 \n
         * 默认最近的观测时间和最近的控制时间为0
         */
        FilterState() :
            last_measurement_time_(0.0)
//            last_control_time_(0.0)
        {
        }

        /// 滤波器最近的观测时间
        double last_measurement_time_;

        // 滤波器最近的控制时间
//        double last_control_time_;

        // 最近的控制时间对应的控制量
//        Eigen::VectorXd last_control_;

        /// 对应的状态量
        Eigen::VectorXd state_;

        /// 滤波器估计的协方差矩阵
        Eigen::MatrixXd estimate_covariance_;
    };

    /* 通用常量 */
    const double PI = 3.141592653589793;
    const double TAU = 6.283185307179587;

    /**
     * @brief 将欧拉角映射在 [-pi, pi] 上
     * @param[in, out] rotation 待映射的弧度值
     */
    void MappingRotation(double &rotation);

    /**
     * @brief 测试一个差值是否处于 N-sigma 倍的标准差中，以此判断该值是否可信
     * @param[in] innovation 两个变量之间的差值
     * @param[in] inv_covariance 分布协方差的倒数
     * @param[in] n_sigma 标准差的倍数
     * @return 该差值是否可信
     * @retval true 可信
     * @retval false 不可信
     * @note 马氏距离: https://blog.csdn.net/qq_28087491/article/details/114370480
     * @note N-sigma 准则: https://blog.csdn.net/weixin_33398032/article/details/105802949
     */
    bool CheckMahalanobisThreshold(const Eigen::VectorXd &innovation, const Eigen::MatrixXd &inv_covariance,
                                   const double &n_sigma);
}

#endif //KALMAN_FILTER_LIBRARY_FILTER_COMMON_H
