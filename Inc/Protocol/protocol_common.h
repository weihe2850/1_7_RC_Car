/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : protocol_common.h
 *  Description  : This file contains Bus communication control function
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:03:07
 *  LastEditTime : 2024-05-19 23:04:13
 */


#ifndef PROTOCOL_COMMON_H
#define PROTOCOL_COMMON_H

#ifdef __cplusplus
extern "C" {
#endif 

#include "stm32f4xx_hal.h"
#include "util_uart.h"

#define Const_Remote_RX_BUFF_LEN             		54

typedef enum {
    Protocol_STATE_NULL      = 0,
    Protocol_STATE_CONNECTED = 1,
    Protocol_STATE_LOST      = 2,
    Protocol_STATE_ERROR     = 3,
    Protocol_STATE_PENDING   = 4
} Protocol_CommStateEnum;

typedef struct {
    Protocol_CommStateEnum state;

    uint32_t last_rx_tick;
    float rx_dt;

    uint32_t last_tx_tick;
    float tx_dt;
    
    uint8_t BusComm_TxData[Const_Remote_RX_BUFF_LEN];
    uint8_t BusComm_RxData[Const_Remote_RX_BUFF_LEN];
} Protocol_DataTypeDef;


extern Protocol_DataTypeDef Protocol_Data;


void Protocol_InitProtocol(void);
Protocol_DataTypeDef* Protocol_GetBusDataPtr(void);
uint8_t Protocol_IsProtocolOffline(void);
void Protocol_SendBlockError(void);
void Protocol_ResetProtocolData(void);
void Protocol_SendProtocolData(void);
void Protocol_DecodeData(uint8_t* buff, int rxdatalen);
void Protocol_UartDataCallback(UART_HandleTypeDef* huart);

void Protocol_CDC_SendProtocolData(void);
void Protocol_CDC_ReceiveCallback(uint8_t* buff,uint32_t rxdatalen);
#endif

#ifdef __cplusplus
}
#endif
