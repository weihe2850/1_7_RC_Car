/*
 *  Project      : Polaris
 * 
 *  file         : app_gimbal.c
 *  Description  : This file contains Gimbal Yaw control function
 *  LastEditors  : WeiHe
 *  Date         : 2023-01-23 03:20:29
 *  LastEditTime : 2024-07-15 19:11:59
 */


#include "app_chassis.h"
#include "periph_motor.h"
#include "periph_servo.h"
#include "sys_const.h"
#include "alg_math.h"


Chassis_DataTypeDef Chassis_Data;

/**
  * @brief          Chassis task
  * @param          NULL
  * @retval         NULL
  */
void Chassis_Task(void const * argument) {

    forever {
      Chassis_Control();
      osDelay(Const_Control_Time);
    }
}


/**
  * @brief          Chassis Init
  * @param          NULL
  * @retval         NULL
  */
void Chassis_Init() {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    for (int i = 0; i < 4; i++) {
        PID_InitPIDParam(&chassis->speed_pid_param[i], Const_ChassisMotorParam[i][0][0], Const_ChassisMotorParam[i][0][1], Const_ChassisMotorParam[i][0][2], Const_ChassisMotorParam[i][0][3], 
                            Const_ChassisMotorParam[i][0][4], Const_ChassisMotorParam[i][1][0], Const_ChassisMotorParam[i][1][1], Const_ChassisMotorParam[i][2][0], Const_ChassisMotorParam[i][2][1], 
                            Const_ChassisMotorParam[i][3][0], Const_ChassisMotorParam[i][3][1], PID_POSITION);
        chassis->motor_ref[i] = 0.0f;
    }

    chassis->steer_ref = 0.0f;
    chassis->mode = Chassis_speed;
}


/**
  * @brief          Chassis control loop
  * @param          NULL
  * @retval         NULL
  */
void Chassis_Control() {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    if (chassis->mode == Chassis_speed) {
        for (int i = 0; i < 4; i++) {
            PID_SetPIDRef(&chassis->speed_pid[i], chassis->motor_ref[i]);
            PID_SetPIDFdb(&chassis->speed_pid[i], Motor_ChassisMotors.motor_handle[i]->encoder.speed);
            PID_CalcPID(&chassis->speed_pid[i], &chassis->speed_pid_param[i]);
            Motor_SetMotorOutput(Motor_ChassisMotors.motor_handle[i], PID_GetPIDOutput(&chassis->speed_pid[i]));
        }
    }
    else if (chassis->mode == Chassis_torque) {
        for (int i = 0; i < 4; i++) {
            Motor_SetMotorOutput(Motor_ChassisMotors.motor_handle[i], chassis->motor_ref[i]);
        }
    }
		Motor_SendMotorGroupsOutput();
    Servo_SetServoAngle(&Servo_SteeringServo, chassis->steer_ref);
}


/**
  * @brief          Get the chassis data typedef ptr
  * @param          NULL
  * @retval         NULL
  */
Chassis_DataTypeDef *Chassis_GetChassisDataPtr() {
    return &Chassis_Data;
}


/**
  * @brief          Change the chassis control mode
  * @param          NULL
  * @retval         NULL
  */
void Chassis_ChangeMode(Chassis_ControlEnum mode) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    chassis->mode = mode;
}


/**
  * @brief          Change the chassis control mode
  * @param          NULL
  * @retval         NULL
  */
void Chassis_ChangeRemoteMode(Chassis_RemoteEnum mode) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    chassis->remote_mode = mode;
}


/**
  * @brief          Set the chassis chassis motor ref
  * @param          NULL
  * @retval         NULL
  */
void Chassis_SetMotorRef(float ref) {
    Chassis_SetSingleMotorRef(0, ref);
    Chassis_SetSingleMotorRef(1, -ref);
    Chassis_SetSingleMotorRef(2, -ref);
    Chassis_SetSingleMotorRef(3, ref);
}
/**
  * @brief          Sets the current for the rear-wheel drive (RWD) motors.
  * @param[in]      ref: The current data for the motors.  Const_Output_to_Torque
  * @retval         None
  */
void Chassis_SetMotorRef_RWD(float ref) {
    float refSign = (ref > 0) ? 1.0f : ((ref < 0) ? -1.0f : 0.0f); 
    Chassis_SetSingleMotorRef(2, -(ref + refSign * Const_Rear_Motor_Bias));
    Chassis_SetSingleMotorRef(3,  (ref - refSign * Const_Rear_Motor_Bias));
}




/**
  * @brief          Set the chassis chassis motor ref (motor_id -- 0-3)
  * @param          NULL
  * @retval         NULL
  */
void Chassis_SetSingleMotorRef(uint32_t motor_id, float ref) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    if (motor_id > 3) return;
    chassis->motor_ref[motor_id] = ref;
}


/**
  * @brief          Set the chassis steer ref  & delta(deg)
  * @param          NULL
  * @retval         NULL
  */
void Chassis_SetSteerRef(float ref) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    LimitMaxMin(ref, 35.0f, -35.0f);
    chassis->steer_ref = ref;
}
