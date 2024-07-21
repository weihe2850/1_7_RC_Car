/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : protocol_transmit.c
 *  Description  : This file is for transmit communication
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:18:41
 *  LastEditTime : 2024-05-20 11:42:06
 */


#include "protocol_common.h"
#include "protocol_transmit.h"
#include "periph_motor.h"
#include "stdlib.h"
#include "lib_buff.h"
#include "app_ins.h"
#include "sys_dwt.h"
#include "app_chassis.h"

static uint32_t _send_imu(uint8_t *buff);
static uint32_t _send_chassis(uint8_t *buff);

Protocol_SendEntry ProtocolCmd_Send[Const_Protocol_Transmit_BUFF_SIZE] = {
    {&_send_imu          },
    {&_send_chassis      }
};

static uint32_t _send_imu(uint8_t *buff) {
    INS_INSTypeDef* ins = INS_GetINSPtr();

    float2buff(ins->Accel[X_INS], buff);
    float2buff(ins->Accel[Y_INS], buff + 4);
    float2buff(ins->Accel[Z_INS], buff + 8);
    float2buff(ins->Gyro[X_INS], buff + 12);
    float2buff(ins->Gyro[Y_INS], buff + 16);
    float2buff(ins->Gyro[Z_INS], buff + 20);
    float2buff(ins->Pitch, buff + 24);
    float2buff(ins->Roll, buff + 28);
    float2buff(ins->Yaw, buff + 32);
    float2buff(ins->YawTotalAngle, buff + 36);
    return 40;
}

// static uint32_t _send_chassis(uint8_t *buff) {
//     for (int i = 0; i < 4; i++) {
//         float2buff(Motor_ChassisMotors.motor_handle[i]->encoder.speed, buff + 2 * i * 4);
//         float2buff(Motor_ChassisMotors.motor_handle[i]->encoder.current, buff + (2 * i + 1) * 4);
//     }
//     return 32;
// }
static uint32_t _send_chassis(uint8_t *buff) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();
    //send motor data: speed(rpm) and current data (+-16836 ->+-20A)
    for (int i = 0; i < 4; i++) {
        float2buff(Motor_ChassisMotors.motor_handle[i]->encoder.speed , buff + 2 * i * 4);
        float2buff(Motor_ChassisMotors.motor_handle[i]->encoder.current , buff + (2 * i + 1) * 4);
    }
    //send controls: delta and given current data (+-16836 ->+-20A)
    float2buff(chassis->steer_ref, buff + 32);
    float2buff(chassis->motor_ref[3], buff + 36);
    return 40;
}