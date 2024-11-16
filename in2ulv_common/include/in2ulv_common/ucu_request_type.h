/**
 * @Description
 * @Version
 * @Author LEEKA
 * @LastEditors
 * @Date 2021/8/25
 * @LastEditTime
 */
#pragma once
namespace inin
{
namespace in2ulv_common
{
    enum UCURequestType
    {
        VERSION_1 = 0X00,
        VERSION_2 = 0X01,
        VERSION_FEATURE_MODE = 0X02,

        // Feature Request
        FQ_NONE_REQUEST = 0X00,
        FQ_OBSTACLE_DETECT_ERROR = 0X01,
        FQ_START_DOUBLE_FLASH,
        FQ_CLOSE_DOUBLE_FLASH,
        FQ_START_WIPER,
        FQ_CLOSE_WIPER,

        // # Car Heading
        CH_FORWARD_PARK = 0X00, //车头入站
        CH_BACKWARD_PARK,       //车尾入站

        // # Park Type
        PT_PARKING_SPACE = 0X00,//停车位
        PT_PARKING_REGION,      //停车区域
        PT_ROAD,                //线路

        // # Remote Ctrl Command
        RCC_START_ULV = 0X00,   //启动无人物流
        RCC_SUSPEND_ULV = 0X09, //暂停无人物流
        RCC_RECOVERY_ULV = 0X0A,//恢复无人物流
    };
}
}
