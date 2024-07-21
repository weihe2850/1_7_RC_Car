/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : app_watchDog.c
 *  Description  : Watch Dog Application
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:45:15
 *  LastEditTime : 2024-05-20 11:25:10
 */


#include "app_watchDog.h"
#include "app_chassis.h"
#include "periph_bmi088.h"
#include "periph_motor.h"
#include "protocol_common.h"
#include "periph_remote.h"

uint16_t Dog_Bowl = 0;

void WatchDog_Task(void const * argument) {
    WatchDog_Feed();
    osDelay(50);

    forever {
        WatchDog_Feed();
        if (Dog_Bowl != 0) {
            Chassis_ChangeMode(Chassis_speed);
            Chassis_SetMotorRef(0.0f);
        }
      osDelay(50);
    }
}


void WatchDog_Feed() {
    Dog_Bowl = 0;
    if (BMI088_IsBMI088Offline() == BMI088_STATE_LOST)
        Dog_Bowl |= 1 << 0;
    if (Motor_IsAnyMotorOffline()) 
        Dog_Bowl |= 1 << 1;
    if (Protocol_IsProtocolOffline() == Protocol_STATE_LOST) 
        Dog_Bowl |= 1 << 2;
    if (Remote_IsRemoteOffline() == Remote_STATE_LOST)
        Dog_Bowl |= 1 << 3;
}

uint8_t WatchDoge_CheckDogBowl() {
    return Dog_Bowl == 0 ? 0 : 1;
}
