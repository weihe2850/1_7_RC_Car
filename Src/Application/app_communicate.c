/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : app_communicate.c
 *  Description  : Communication Application
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:44:07
 *  LastEditTime : 2024-05-20 12:19:57
 */


#include "app_communicate.h"
#include "protocol_common.h"
#include "util_uart.h"
#include "sys_dwt.h"


void Comm_Task(void const * argument) {
	  osDelay(500);
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();
    forever {
      Protocol_CDC_SendProtocolData();
      osDelay(50);
    }
}
