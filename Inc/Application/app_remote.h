/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : app_remote.h
 *  Description  : This file contains Remote control function
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:44:57
 *  LastEditTime : 2023-05-01 13:44:13
 */



#ifndef GIM_REMOTE_CTRL_H
#define GIM_REMOTE_CTRL_H

#ifdef __cplusplus
extern "C" {
#endif


#include "main.h"
#include "FreeRTOS.h"
#include "cmsis_os.h"

typedef struct {
    uint8_t pending;
    float yaw_angle_offset;
} Remote_RemoteControlTypeDef;

void Remote_Task(void const * argument);
void Remote_RemotrControlInit(void);
Remote_RemoteControlTypeDef* Remote_GetControlDataPtr(void);
void Remote_ControlCom(void);
uint8_t Remote_Gesturejudge(void);
void Remote_Gesture(void);
void Remote_GestureFunction_1(void);
void Remote_GestureFunction_2(void);
void Remote_GestureFunction_3(void);
void Remote_GestureFunction_4(void);
void Remote_RemoteProcess(void);

#endif

#ifdef __cplusplus
}
#endif
