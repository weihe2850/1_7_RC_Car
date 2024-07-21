/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : periph_motor.c
 *  Description  : This file contains motor control function
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 00:43:48
 *  LastEditTime : 2024-05-20 19:18:26
 */


#include "periph_motor.h"
#include "sys_const.h"
#include "sys_dwt.h"
#include "stdio.h"
#include "stdlib.h"

/********** VOLATILE USER CODE **********/
Motor_MotorGroupTypeDef *Motor_groupHandle[MOTOR_GROUP_NUM];

Motor_MotorGroupTypeDef Motor_ChassisMotors;        

Motor_MotorTypeDef Motor_ChassisLeftFrontMotor;
Motor_MotorTypeDef Motor_ChassisLeftBackMotor;
Motor_MotorTypeDef Motor_ChassisRightFrontMotor;
Motor_MotorTypeDef Motor_ChassisRightBackMotor;


/**
  * @brief      Motor encoder decoding callback function
  * @param      canid: CAN Handle number
  * @param      stdid: CAN identifier
  * @param      rxdata: CAN rx data buff
  * @retval     NULL
  */
void Motor_EncoderDecodeCallback(CAN_HandleTypeDef* phcan, uint32_t stdid, uint8_t rxdata[], uint32_t len) {
    if (phcan == NULL) return;

    for (int i = 0; i < MOTOR_GROUP_NUM; i++) {
        for (int j = 0; j < Motor_groupHandle[i]->motor_num; j++) {
            if ((phcan == Motor_groupHandle[i]->can_handle) 
                  && (stdid == Motor_groupHandle[i]->motor_handle[j]->id) && phcan != NULL) {
                Motor_groupHandle[i]->motor_handle[j]->callback(Motor_groupHandle[i]->motor_handle[j], rxdata, len);
            }
        }
    }
}


/********** VOLATILE USER CODE END **********/


/**
  * @brief      Initialize all motors
  * @param      NULL
  * @retval     NULL
  */
void Motor_InitAllMotors() {
    Motor_groupHandle[0] = &Motor_ChassisMotors;
    Motor_InitMotorGroup(&Motor_ChassisMotors, 4, &hcan1, 0x200); 
    Motor_InitMotor(&Motor_ChassisLeftFrontMotor,   Motor_TYPE_RM3508, 0x201, 0.1, rm3508_encoder_callback, 0.0f);
    Motor_InitMotor(&Motor_ChassisLeftBackMotor,    Motor_TYPE_RM3508, 0x202, 0.1, rm3508_encoder_callback, 0.0f);
    Motor_InitMotor(&Motor_ChassisRightFrontMotor,  Motor_TYPE_RM3508, 0x203, 0.1, rm3508_encoder_callback, 0.0f);
    Motor_InitMotor(&Motor_ChassisRightBackMotor,   Motor_TYPE_RM3508, 0x204, 0.1, rm3508_encoder_callback, 0.0f);
    Motor_ChassisMotors.motor_handle[0] = &Motor_ChassisLeftFrontMotor;
    Motor_ChassisMotors.motor_handle[1] = &Motor_ChassisLeftBackMotor;
    Motor_ChassisMotors.motor_handle[2] = &Motor_ChassisRightFrontMotor;
    Motor_ChassisMotors.motor_handle[3] = &Motor_ChassisRightBackMotor;
}


/**
  * @brief      Initialize the motor
  * @param      pmotor: Pointer to motor object
  * @param      type: Type of motor (pwm or can)
  * @param      callback: Motor callback function
  * @retval     NULL
  */
void Motor_InitMotor(Motor_MotorTypeDef* pmotor, Motor_MotorTypeEnum type, uint16_t id, float fil_param, 
                        Motor_EncoderCallbackFuncTypeDef callback, float motor_offset) {
    if (pmotor == NULL) return;
    pmotor->update_dt = 0;
    pmotor->last_update_tick = 0;
    pmotor->type = type;
    pmotor->id = id;			
    pmotor->init = 0;			
    pmotor->output = 0;
    pmotor->callback = callback;
    pmotor->encoder.init_offset = motor_offset;
    Filter_LowPassInit(fil_param, &pmotor->fdb_fil_param);
}


/**
  * @brief      Initialization of motor group
  * @param      pgroup: Pointer to motor group
  * @param      type: Type of motor (pwm or can)
  * @param      motor_num: Number of motor group
  * @param      phcan: Pointer of can handle
  * @param      stdid: Motor id
  * @retval     NULL
  */
void Motor_InitMotorGroup(Motor_MotorGroupTypeDef* pgroup, uint8_t motor_num, CAN_HandleTypeDef* phcan, uint16_t stdid) {
    if (pgroup == NULL) return;
    pgroup->motor_num = motor_num;

    if (phcan == NULL) return;
    pgroup->can_handle = phcan;
    Can_InitTxHeader(&(pgroup->can_header), stdid, 0x01, 8);

    for (int i = 0; i < 4; ++i) 
        pgroup->motor_handle[i] = NULL;

}


/**
  * @brief      Set output
  * @param      pmotor: Pointer to motor object
  * @param      pparam: Pointer to motor parameter object
  * @retval     NULL
  */
void Motor_SetMotorOutput(Motor_MotorTypeDef* pmotor, float output) {
    pmotor->output = output;
}


/**
  * @brief      Get motor output value
  * @param      pmotor: Pointer to motor object
  * @retval     Output value
  */
uint16_t Motor_GetMotorOutput(Motor_MotorTypeDef* pmotor) {
    if (pmotor == NULL) return 0;
    if (pmotor->type == Motor_TYPE_NOT_CONNECTED) return 0;

    int16_t ret = 0;
    if (pmotor->type == Motor_TYPE_RM3508) {
        ret = (int16_t)(pmotor->output);               // output / 10.0f * 10000.0f
        return (uint16_t)ret;
    }
    return 0;
}


/**
  * @brief      Transmitter output
  * @param      pgroup: Pointer to the motor group to send
  * @retval     NULL
  */
void Motor_SendMotorGroupOutput(Motor_MotorGroupTypeDef *pgroup) {
    if (pgroup == NULL) return;

    uint8_t txdata[8];
    txdata[0] = (uint8_t)(Motor_GetMotorOutput(pgroup->motor_handle[0]) >> 8);
    txdata[1] = (uint8_t)Motor_GetMotorOutput(pgroup->motor_handle[0]);
    txdata[2] = (uint8_t)(Motor_GetMotorOutput(pgroup->motor_handle[1]) >> 8);
    txdata[3] = (uint8_t)Motor_GetMotorOutput(pgroup->motor_handle[1]);
    txdata[4] = (uint8_t)(Motor_GetMotorOutput(pgroup->motor_handle[2]) >> 8);
    txdata[5] = (uint8_t)Motor_GetMotorOutput(pgroup->motor_handle[2]);
    txdata[6] = (uint8_t)(Motor_GetMotorOutput(pgroup->motor_handle[3]) >> 8);
    txdata[7] = (uint8_t)Motor_GetMotorOutput(pgroup->motor_handle[3]);
    
    Can_SendMessage(pgroup->can_handle, &(pgroup->can_header), txdata);
    
}


void Motor_SendMotorGroupsOutput() {
    for (int i = 0; i < MOTOR_GROUP_NUM; i++) {
        Motor_SendMotorGroupOutput(Motor_groupHandle[i]);
    }
}


/**
  * @brief      Judge whether any motor is offline
  * @param      NULL
  * @retval     Offline or not (1 is yes, 0 is no)
  */
uint8_t Motor_IsAnyMotorOffline() {
    for (int i = 0; i < MOTOR_GROUP_NUM; ++i) {
        for (int j = 0; j < 4; ++j) {
            if (!Motor_IsMotorOffline(Motor_groupHandle[i]->motor_handle[j])) {
                return 0;
            }
        }
    }
    return 1;
}


/**
  * @brief      Judge whether the motor is offline
  * @param      pmotor: Pointer to motor object
  * @retval     Offline or not (1 is yes, 0 is no)
  */
uint8_t Motor_IsMotorOffline(Motor_MotorTypeDef* pmotor) {
    if (pmotor == NULL) return 0;
    if (pmotor->type == Motor_TYPE_NOT_CONNECTED) return 0;
    if (DWT_GetDeltaTWithOutUpdate(&pmotor->last_update_tick) > Const_Motor_MOTOR_OFFLINE_TIME) 
        pmotor->type = Motor_TYPE_NOT_CONNECTED;

    return (pmotor->type != Motor_TYPE_NOT_CONNECTED);
}


/********** ENCODER CALLBACK FUNCTION **********/


/**
  * @brief      Gimbal motor encoder callback
  * @param      pmotor: Pointer to motor object
  * @retval     NULL
  */
void rm3508_encoder_callback(Motor_MotorTypeDef *pmotor, uint8_t rxbuff[], uint32_t len) {
    if (pmotor == NULL) return;
    if (len != 8) return;

    int diff = pmotor->encoder.angle - pmotor->encoder.last_angle;      //The increase of mechanical angle is positive
    if (diff < -5500)           // Make a positive turn
        pmotor->encoder.round_count++;
    else if (diff > 5500)       // Turn around in the opposite direction
        pmotor->encoder.round_count--;
        
    // Assign a value to the previous angle and get the latest angle
    pmotor->encoder.last_angle = pmotor->init == 1 ? pmotor->encoder.angle : (rxbuff[0] << 8 | rxbuff[1]);
    pmotor->encoder.angle   = (float)((uint16_t)((uint16_t)rxbuff[0] << 8 | (uint16_t)rxbuff[1]));
    pmotor->encoder.speed   = (float)((int16_t)((uint16_t)rxbuff[2] << 8 | (uint16_t)rxbuff[3]));
    pmotor->encoder.current = (float)((int16_t)((uint16_t)rxbuff[4] << 8 | (uint16_t)rxbuff[5]));
    pmotor->encoder.temp = (float)(rxbuff[6]); 
    pmotor->init = 1; 

    // Calculate continuous angle
    pmotor->encoder.consequent_angle = (float)pmotor->encoder.round_count * 360.0f + 
                                       (float)pmotor->encoder.angle / 8192.0f * 360.0f;
    pmotor->encoder.limited_angle = (float)pmotor->encoder.angle / 8192.0f * 360.0f;
    
    if (pmotor->encoder.limited_angle < pmotor->encoder.init_offset - 180 && pmotor->encoder.init_offset >= 180)
        pmotor->encoder.limited_angle += 360;
    else if (pmotor->encoder.limited_angle > pmotor->encoder.init_offset + 180 && pmotor->encoder.init_offset < 180)
        pmotor->encoder.limited_angle -= 360;
    
    pmotor->type = Motor_TYPE_RM3508;
    pmotor->update_dt = DWT_GetDeltaT(&pmotor->last_update_tick); 
}
