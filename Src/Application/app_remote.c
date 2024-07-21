/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : app_remote.c
 *  Description  : This file contains Remote control function
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:44:37
 *  LastEditTime : 2024-05-20 19:13:26
 */


#include "app_remote.h"
#include "app_chassis.h"
#include "periph_remote.h"
#include "sys_const.h"
#include "alg_filter.h"
#include "sys_const.h"


#define REMOTE_TASK_PERIOD  1

Remote_RemoteControlTypeDef Remote_remoteControlData;


/**
  * @brief          Remote task
  * @param          NULL
  * @retval         NULL
  */
void Remote_Task(void const * argument) {

    forever {
        Remote_ControlCom();
        osDelay(REMOTE_TASK_PERIOD);
    }
}


/**
  * @brief      Remote Control Init
  * @param      NULL
  * @retval     NULL
  */
void Remote_RemotrControlInit() {
    Remote_RemoteControlTypeDef *control_data = Remote_GetControlDataPtr();
}


/**
  * @brief      Gets the pointer to the remote control data object
  * @param      NULL
  * @retval     Pointer to remote control data object
  */
Remote_RemoteControlTypeDef* Remote_GetControlDataPtr() {
    return &Remote_remoteControlData;
}


/**
* @brief      Remote control command
* @param      NULL
* @retval     NULL
*/
void Remote_ControlCom() {
    Remote_RemoteControlTypeDef *control_data = Remote_GetControlDataPtr();
    Remote_RemoteDataTypeDef *data = Remote_GetRemoteDataPtr();

    control_data->pending = 1;

    if (data->remote.s[0] == Remote_SWITCH_UP) {
        switch (data->remote.s[1]) {
            case Remote_SWITCH_UP: {
                Chassis_ChangeRemoteMode(Chassis_Auto);
                Remote_Gesture();
                break;
            }
            case Remote_SWITCH_MIDDLE: {
                Chassis_ChangeRemoteMode(Chassis_Remote);
                Chassis_ChangeMode(Chassis_speed);
                Remote_RemoteProcess();
                // Remote_KeyMouseProcess();
                break;
            }
            case Remote_SWITCH_DOWN: {
                Chassis_ChangeRemoteMode(Chassis_Remote);
                Chassis_ChangeMode(Chassis_torque);
                Remote_RemoteProcess();
                break;
            }
            default:
                break;
        }
    }
    else {
        Chassis_ChangeRemoteMode(Chassis_Remote);
        Chassis_ChangeMode(Chassis_speed);
        Chassis_SetSteerRef(0.0f);
        Chassis_SetMotorRef(0.0f);
    }

    control_data->pending = 0;
}


/**
* @brief      Remote control process
* @param      NULL
* @retval     NULL
*/
void Remote_RemoteProcess() {
    Remote_RemoteDataTypeDef *data = Remote_GetRemoteDataPtr();
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();
    
    if (chassis->mode == Chassis_torque) {
        // Chassis_SetMotorRef(data->remote.ch[1] * Const_Remote_Torque_Gain);
        Chassis_SetMotorRef_RWD(data->remote.ch[1] * Const_Remote_Torque_Gain);
    }
    else if (chassis->mode == Chassis_speed) {
        Chassis_SetMotorRef(data->remote.ch[1] * Const_Remote_Speed_Gain);
    }
    
    Chassis_SetSteerRef(-data->remote.ch[2] * Const_Remote_Steer_Gain);
}


/**
* @brief      KeyMouse control process
* @param      NULL
* @retval     NULL
*/
void Remote_KeyMouseProcess() { 
    Remote_RemoteDataTypeDef *data = Remote_GetRemoteDataPtr();
    Remote_RemoteControlTypeDef *control_data = Remote_GetControlDataPtr();
    
    /************Control mode choise**************/
    if (data->key.z == 1) {
    }

    if (data->key.x == 1) {
    }

    if (data->key.c == 1 && data->key.shift == 1) {
    }
    else {
    }
    if (data->key.c == 1) {
    }

    if (((data->key.w == 1) || (data->key.a == 1)  ||(data->key.d == 1) || (data->key.s == 1))) {
    }

    if (data->key.r == 1) {

    }
    else {
    }

    if (data->key.f == 1) {
        
    }
    
    
    if (data->key.g == 1) {
        
    }

    if (data->key.shift == 1) {
        
	}
	else {	

	}
}


/**
* @brief      Gesture control judge function
* @param      NULL
* @retval     Gesture flag
*/
uint8_t Remote_Gesturejudge() {
    Remote_RemoteDataTypeDef *data = Remote_GetRemoteDataPtr();

    static uint8_t count_1 = 0, count_2 = 0, count_3 = 0, count_4 = 0;
    //  Gesture of "\/"
    if ((data->remote.ch[0] <= -650) && (data->remote.ch[1] <= -650) && 
        (data->remote.ch[2] >=  650) && (data->remote.ch[3] <= -650)) {
        count_1++;
        if (count_1 >= 200) {
        count_1 = 200;
            return 1;
        }
    }
    else {
        count_1 = 0;
    }

    // Gesture of "/\"
    if ((data->remote.ch[0] <= -650) && (data->remote.ch[1] >= 650) && 
        (data->remote.ch[2] >=  650) && (data->remote.ch[3] >= 650)) {
        count_2++;
        if (count_2 >= 200) {
            count_2 = 200;
            return 2;
        }
    }
    else {
        count_2 = 0;
    }

    // Gesture of up "//"
    if ((data->remote.ch[0] >=  650) && (data->remote.ch[1] >= 650) && 
        (data->remote.ch[2] >=  650) && (data->remote.ch[3] >= 650)) {
        count_3++;
        if (count_3 >= 200) {
            count_3 = 200;
            return 3;

        }
    }
    else {
        count_3 = 0;
    }

    // Gesture of down "//"
    if ((data->remote.ch[0] <= -650) && (data->remote.ch[1] <= -650) && 
        (data->remote.ch[2] <= -650) && (data->remote.ch[3] <= -650)) {
        count_4++;
        if (count_4 >= 200) {
            count_4 = 200;
            return 4;
        }
    }
    else {
        count_4 = 0;
    }
    return 0;
}


/**
* @brief      Gesture control function
* @param      NULL
* @retval     NULL
*/
void Remote_Gesture() {

    switch (Remote_Gesturejudge()) {
        case 0:
            break;
        case 1:
            Remote_GestureFunction_1();     //  Gesture of "\/"
            break;
        case 2:
            Remote_GestureFunction_2();     // Gesture of "/\"
            break;
        case 3:
            Remote_GestureFunction_3();     // Gesture of up "//"
            break;
        case 4:
            Remote_GestureFunction_4();     // Gesture of down "\\"
        default:
            break;
    }
    
}


/**
* @brief      \/ control function
* @param      NULL
* @retval     NULL
*/
void Remote_GestureFunction_1() {
    NVIC_SystemReset();
}


/**
* @brief      /\ control function
* @param      NULL
* @retval     NULL
*/
void Remote_GestureFunction_2() {

}


/**
* @brief      // control function
* @param      NULL
* @retval     NULL
*/
void Remote_GestureFunction_3() {

}


/**
* @brief      \\ control function
* @param      NULL
* @retval     NULL
*/
void Remote_GestureFunction_4() {
}
