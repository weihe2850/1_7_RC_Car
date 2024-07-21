/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : protocol_receive.c
 *  Description  : This file is for receive communication
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:10:30
 *  LastEditTime : 2024-05-20 11:45:40
 */


#include "protocol_common.h"
#include "protocol_receive.h"
#include "app_chassis.h"
#include "lib_buff.h"
#include "sys_dwt.h"
#include "sys_const.h"


static uint32_t _set_angle_(uint8_t *buff);
static uint32_t _set_motor_(uint8_t *buff);



Protocol_ReceiveEntry ProtocolCmd_Receive[Const_Protocol_Receive_BUFF_SIZE] = {
    {&_set_angle_           },
    {&_set_motor_           }
};


static uint32_t _set_angle_(uint8_t *buff) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();

    if (chassis->remote_mode == Chassis_Auto) {
        Chassis_SetSteerRef(buff2float(buff));
        Chassis_ChangeMode((buff[4] == 0 ? Chassis_torque : Chassis_speed));
    }
    return 5;
}

static uint32_t _set_motor_(uint8_t *buff) {
    Chassis_DataTypeDef *chassis = Chassis_GetChassisDataPtr();
    
    if (chassis->remote_mode == Chassis_Auto) {
        Chassis_SetMotorRef_RWD(buff2float(buff));
    }
    return 4;
}
