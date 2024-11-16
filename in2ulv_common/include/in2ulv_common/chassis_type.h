/**
 * @Description
 * @Version
 * @Author LEEKA
 * @LastEditors
 * @Date 2021/8/16
 * @LastEditTime
 */
#pragma once
namespace inin
{
namespace in2ulv_common
{
    enum ChassisType
    {
        //档位
        GEAR_N = 0X0,   //空挡
        GEAR_D = 0X1,   //前进
        GEAR_R = 0X2,   //后退
        GEAR_P = 0X3,   //驻车

        //超声波传感器状态
        SENSOR_NORMAL = 0X0,
        SENSOR_MISSED = 0X1,
        SENSOR_LOW_CONFIDENCE = 0X2,
        SENSOR_ERROR = 0X3,

        //车轮方向
        WHEEL_DIRECT_INIT = 0X0,
        WHEEL_DIRECT_FORWARD = 0X1,
        WHEEL_DIRECT_BACKWARD = 0X2,
        WHEEL_DIRECT_STOP = 0X3,
        WHEEL_DIRECT_INVALID = 0X4,

        //EBP工作状态
        EBP_UNKNOWN = 0X0,
        EBP_RELEASED = 0X1,
        EBP_LOCKED= 0X2,
        EBP_RELEASING = 0X3,
        EBP_LOCKING = 0X4,
        //EBP驻车请求
        EBP_PARKING_NOREQUEST = 0X0,
        EBP_PARKING_RELEASED = 0X1,
        EBP_PARKING_LOCKED = 0X2,
        //EBP_PARKING

        //制动踏板
        BRAKE_PEDAL_UNTREAD = 0X0,
        BRAKE_PEDAL_TREAD = 0X1,

        //有效性
        VALID = 0X0,
        INVALID = 0X1,

        //请求
        NOREQUEST = 0X0,
        REQUEST = 0X1,

    };
}
}