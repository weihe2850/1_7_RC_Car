/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : app_init.c
 *  Description  : All initialization threads
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:42:52
 *  LastEditTime : 2024-05-20 12:14:40
 */


#include "app_init.h"
#include "sys_softTimer.h"
#include "util_can.h"
#include "periph_motor.h"
#include "periph_bmi088.h"
#include "periph_remote.h"
#include "periph_servo.h"
#include "sys_dwt.h"
#include "alg_pid.h"
#include "app_ins.h"
#include "app_chassis.h"
#include "protocol_common.h"
#include "usb_device.h"


void Init_InitAll() {
    DWT_Init(168);

    BMI088_Init();

    // Ins init
    INS_Init();

    // utility Group init
	  Can_InitFilterAndStart(&hcan1);
	  Can_InitFilterAndStart(&hcan2);

    // periph init
    Servo_InitAllServos();
	
    Motor_InitAllMotors();
	  Remote_InitRemote();
    
    // App init
    Protocol_InitProtocol();
    Chassis_Init();
}

void Init_Task(void const * argument) {
    SoftTimer_StartAll();
		MX_USB_DEVICE_Init();
	
    forever {
		  vTaskSuspend(Init_TaskHandleHandle);
      osDelay(20);
    }
    
}
