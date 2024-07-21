/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : sys_const.c
 *  Description  : This file include all required constants
 *  LastEditors  : WeiHe
 *  Date         : 2023-01-23 03:20:29
 *  LastEditTime : 2024-07-15 19:11:59
 */


#include "sys_const.h"


const float Const_SERVO_INIT_OFFSET                 = 0.073f;
float Const_Remote_Speed_Gain                 		= 8.0f;
const float Const_Remote_Steer_Gain                 = 0.053f;
float Const_Remote_Torque_Gain                      = 24.8242424f;


//the gain factor for converting angles to duty cycle
const float Const_Angle_to_Duty_Gain                = 0.000771f; 
//the coefficient for converting motor output(current data(+-16836)) to torque
const float Const_Output_to_Torque                  = 0.0003662109375f;
//the offset value for the rear motor
const float Const_Rear_Motor_Bias                   = 20.0f;
//Control time (ms)
const float Const_Control_Time                      = 2.0f;
// const float Const_Current_to_Torque                 = 0.3f; 
// const float Const_Motor_Gear_Ratio                 = 5.0f; 
    // balance param
const float Const_ChassisMotorParam[4][4][5] = {
    {{20.0f,    0,    0,    0,    30000}, {0.1f,    -1}, {0,    0}, {-1, -1}},
    {{20.0f,    0,    0,    0,    30000}, {0.1f,    -1}, {0,    0}, {-1, -1}},
    {{20.0f,    0,    0,    0,    30000}, {0.1f,    -1}, {0,    0}, {-1, -1}},
    {{20.0f,    0,    0,    0,    30000}, {0.1f,    -1}, {0,    0}, {-1, -1}}};
    // kp       ki    kd   sum    outmax    


const float QuaternionEKF_F[36] = {1, 0, 0, 0, 0, 0,
                                   0, 1, 0, 0, 0, 0,
                                   0, 0, 1, 0, 0, 0,
                                   0, 0, 0, 1, 0, 0,
                                   0, 0, 0, 0, 1, 0,
                                   0, 0, 0, 0, 0, 1};

float QuaternionEKF_P[36] = {100000,    0.1,    0.1,    0.1,    0.1,    0.1,
                                0.1, 100000,    0.1,    0.1,    0.1,    0.1,
                                0.1,    0.1, 100000,    0.1,    0.1,    0.1,
                                0.1,    0.1,    0.1, 100000,    0.1,    0.1,
                                0.1,    0.1,    0.1,    0.1,    100,    0.1,
                                0.1,    0.1,    0.1,    0.1,    0.1,    100};

SPI_HandleTypeDef* Const_BMI088_SPI_HANDLER         = &hspi1;
const float Const_BMI088_OFFLINE_TIME               = 0.3f;
UART_HandleTypeDef* Const_Remote_UART_HANDLER       = &huart3;
const float Const_Remote_REMOTE_OFFLINE_TIME        = 1.0f;
const float Const_Motor_MOTOR_OFFLINE_TIME          = 0.05f;
const uint16_t Const_Protocol_OFFLINE_TIME          = 500; 
UART_HandleTypeDef* Const_Comm_UART_HANDLER         = &huart1;


