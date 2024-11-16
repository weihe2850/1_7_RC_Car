/**
 * @file filter_common.cpp
 * @brief 卡尔曼滤波相关的常量定义
 * 包含状态变量枚举类型，控制变量枚举类型和各种常量定义
 * @author Beta-Tao
 * @date 2022-03-27
 */

#include "Kalman_Filter_Library/filter_common.h"

namespace KalmanFilter
{
    void MappingRotation(double &rotation)
    {
        while (rotation > PI)
        {
            rotation -= TAU;
        }

        while (rotation < -PI)
        {
            rotation += TAU;
        }
    }

    bool CheckMahalanobisThreshold(const Eigen::VectorXd &innovation, const Eigen::MatrixXd &inv_covariance,
                                   const double &n_sigma)
    {
        double sq_mahalanobis = innovation.dot(inv_covariance * innovation);
        double threshold = n_sigma * n_sigma;

        if (sq_mahalanobis >= threshold)
        {
            return false;
        }

        return true;
    }
}
