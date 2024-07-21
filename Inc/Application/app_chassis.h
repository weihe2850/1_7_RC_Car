/*
 *  Project      : Polaris
 * 
 *  file         : app_gimbal.h
 *  Description  : This file contains Gimbal control function
 *  LastEditors  : Polaris
 *  Date         : 2021-05-04 20:53:31
 *  LastEditTime : 2024-05-20 11:38:47
 */

#ifndef APP_GIMBAL_H
#define APP_GIMBAL_H

#ifdef __cplusplus
extern "C" {
#endif 

#include "cmsis_os.h"
#include "FreeRTOS.h"
#include "main.h"
#include "alg_pid.h"

typedef enum {
    Chassis_torque  = 0,
    Chassis_speed   = 1
} Chassis_ControlEnum;

typedef enum {
    Chassis_Remote  = 0,
    Chassis_Auto    = 1
} Chassis_RemoteEnum;

typedef struct {
    Chassis_ControlEnum mode;
    Chassis_RemoteEnum remote_mode;
    
    float motor_ref[4];
    float steer_ref;

    PID_PIDParamTypeDef speed_pid_param[4];
    PID_PIDTypeDef speed_pid[4];
} Chassis_DataTypeDef;

void Chassis_Task(void const * argument);

void Chassis_Init(void);
void Chassis_Control(void); 
Chassis_DataTypeDef *Chassis_GetChassisDataPtr();
void Chassis_ChangeMode(Chassis_ControlEnum mode);
void Chassis_ChangeRemoteMode(Chassis_RemoteEnum mode);
void Chassis_SetMotorRef(float ref);
void Chassis_SetMotorRef_RWD(float ref);
void Chassis_SetSingleMotorRef(uint32_t motor_id, float ref);
void Chassis_SetSteerRef(float ref);

#endif

#ifdef __cplusplus
}
#endif
