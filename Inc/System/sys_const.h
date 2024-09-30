/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : sys_const.h
 *  Description  : This file include all required constants
 *  LastEditors  : WeiHe
 *  Date         : 2023-01-23 03:20:29
 *  LastEditTime : 2024-07-15 19:11:59
 */


#ifndef SYS_CONST_H
#define SYS_CONST_H

#ifdef __cplusplus
extern "C" {
#endif 

#include "main.h"
#include "util_spi.h"
#include "util_uart.h"

extern float Const_SERVO_INIT_OFFSET;
extern const float Const_SERVO_INIT_OFFSET_ORIGINAL;
extern float Const_Remote_Speed_Gain;
extern const float Const_Remote_Steer_Gain;
extern float Const_Remote_Torque_Gain;

extern const float Const_Angle_to_Duty_Gain; 
extern const float Const_Output_to_Torque; 
extern const float Const_Rear_Motor_Bias;
extern const float Const_Control_Time;
extern const float Const_ChassisMotorParam[4][4][5];

extern const float QuaternionEKF_F[36];                                   
extern float QuaternionEKF_P[36];

extern SPI_HandleTypeDef* Const_BMI088_SPI_HANDLER;
extern const float Const_BMI088_OFFLINE_TIME;
extern UART_HandleTypeDef* Const_Remote_UART_HANDLER;
extern const float Const_Remote_REMOTE_OFFLINE_TIME;
extern const float Const_Motor_MOTOR_OFFLINE_TIME;
extern const uint16_t Const_Protocol_OFFLINE_TIME;
extern UART_HandleTypeDef* Const_Comm_UART_HANDLER;
void SetServoInitOffset(float newValue);
#endif

#ifdef __cplusplus
}
#endif
