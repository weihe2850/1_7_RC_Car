/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : protocol_common.c
 *  Description  : This file contains Bus communication control function
 *  LastEditors  : Polaris
 *  Date         : 2023-01-23 03:02:53
 *  LastEditTime : 2024-05-20 19:11:52
 */


#include "protocol_common.h"
#include "protocol_receive.h"
#include "protocol_transmit.h"
#include "lib_buff.h"
#include "stdlib.h"
#include "sys_dwt.h"
#include "sys_const.h"
#include "usbd_cdc_if.h"
// Dual bus communication protocol

Protocol_DataTypeDef Protocol_Data;


/**
  * @brief      Inter bus communication initialization
  * @param      NULL
  * @retval     NULL
  */
void Protocol_InitProtocol() {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();

    Uart_InitUartDMA(Const_Comm_UART_HANDLER);
    Uart_ReceiveDMA(Const_Comm_UART_HANDLER, buscomm->BusComm_RxData, Const_Remote_RX_BUFF_LEN);
    Protocol_ResetProtocolData();
}


/**
  * @brief      Gets the pointer to the bus communication data object
  * @param      NULL
  * @retval     Pointer to bus communication data object
  */
Protocol_DataTypeDef* Protocol_GetBusDataPtr() {
    return &Protocol_Data;
}


/**
  * @brief      Check whether the dual bus communication is offline
  * @param      NULL
  * @retval     NULL
  */
uint8_t Protocol_IsProtocolOffline() {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();
    if (DWT_GetDeltaTWithOutUpdate(&buscomm->last_rx_tick) > Const_Protocol_OFFLINE_TIME) {
        buscomm->state = Protocol_STATE_LOST;
    }
    return buscomm->state != Protocol_STATE_CONNECTED;
}


/**
  * @brief      Protocol send block error handler
  * @param      NULL
  * @retval     NULL
  */
void Protocol_SendBlockError() {
    return;
}


/**
  * @brief      Reset inter bus communication data object
  * @param      NULL
  * @retval     NULL
  */
void Protocol_ResetProtocolData() {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();
    buscomm->rx_dt = DWT_GetDeltaT(&buscomm->last_rx_tick);
    buscomm->tx_dt = DWT_GetDeltaT(&buscomm->last_tx_tick);
}


/**
  * @brief      Data sending function of serial port in inter bus communication
  * @param      NULL
  * @retval     NULL-
  */
void Protocol_SendProtocolData() {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();

    buscomm->tx_dt = DWT_GetDeltaT(&buscomm->last_tx_tick);
    uint16_t len, sum = 0;   

    // to nuc
    len = 6;    // 2(head frame) + 2(len frame) + 2(verify frame)

    buscomm->BusComm_TxData[0] = 0X5A;
    buscomm->BusComm_TxData[1] = 0XA5;
    for (int i = 0; i < Const_Protocol_Transmit_BUFF_SIZE; i++) {
        if (ProtocolCmd_Send[i].bus_func != NULL) 
            len += ProtocolCmd_Send[i].bus_func(buscomm->BusComm_TxData + len);
    }
    // len += 2;       // for tail frame
    buscomm->BusComm_TxData[2] = (uint8_t)(len & 0xff);
    buscomm->BusComm_TxData[3] = (uint8_t)((len & 0xff00) >> 8);
    buscomm->BusComm_TxData[4] = 0x00;
    buscomm->BusComm_TxData[5] = 0x00;
    for (int i = 0; i < len; i++) 
        sum += buscomm->BusComm_TxData[i];

    buscomm->BusComm_TxData[4] = (uint8_t)(sum & 0xff);;
    buscomm->BusComm_TxData[5] = (uint8_t)((sum & 0xff00) >> 8);;

    buscomm->BusComm_TxData[len] = 0X7A;
    buscomm->BusComm_TxData[len + 1] = 0XA7;
    
    Uart_SendMessage(Const_Comm_UART_HANDLER, buscomm->BusComm_TxData, len + 2, 10);

    buscomm->state = Protocol_STATE_CONNECTED;
}


/**
  * @brief      Verify the data pack
  * @param      NULL
  * @retval     0--error 1--right
  */
static uint8_t Protocol_MergeAndverify(uint8_t buff[], uint32_t rxdatalen) {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();
    uint16_t sum, len, check_sum=0;

    if (rxdatalen <= 12) return 0;
    if ((buff[0] != 0x5A) || (buff[1] != 0xA5)) return 0;

    len = (uint16_t)buff[2] | ((uint16_t)buff[3] << 8);
    sum = (uint16_t)buff[4] | ((uint16_t)buff[5] << 8);

    if (len != rxdatalen) return 0;
    for (int i = 0; i < rxdatalen-2; i++) 
        check_sum += buff[i];
    check_sum = check_sum - buff[4] - buff[5];
    
    if (sum != check_sum) return 0;

	return 1;
}


/**
  * @brief      Data decoding function of serial port in inter bus communication
  * @param      buff: Data buffer
  * @param      rxdatalen: data length
  * @retval     NULL
  */
void Protocol_DecodeData(uint8_t* buff, int rxdatalen) {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();

    if (Protocol_MergeAndverify(buff, rxdatalen) == 0) return; 
    buscomm->rx_dt = DWT_GetDeltaT(&buscomm->last_rx_tick);
    uint32_t len = 6;

    for (int i = 0; i < Const_Protocol_Receive_BUFF_SIZE; i++) {
        if (ProtocolCmd_Receive[i].bus_func != NULL) {
            len += ProtocolCmd_Receive[i].bus_func(buff + len);
        }
    }

}


void Protocol_UartDataCallback(UART_HandleTypeDef* huart) {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();
    /* clear DMA transfer complete flag */
    __HAL_DMA_DISABLE(huart->hdmarx);

    /* handle uart data from DMA */
    int rxdatalen = Const_Remote_RX_BUFF_LEN - Uart_DMACurrentDataCounter(huart->hdmarx->Instance);
    Protocol_DecodeData(buscomm->BusComm_RxData, rxdatalen);

    /* restart dma transmission */
    __HAL_DMA_SET_COUNTER(huart->hdmarx, Const_Remote_RX_BUFF_LEN);
    __HAL_DMA_ENABLE(huart->hdmarx);
}


void Protocol_CDC_ReceiveCallback(uint8_t* buff,uint32_t rxdatalen) {

    Protocol_DecodeData( buff, rxdatalen);

}

/**
  * @brief      Data sending function of serial port in inter bus communication
  * @param      NULL
  * @retval     NULL-
  */
void Protocol_CDC_SendProtocolData() {
    Protocol_DataTypeDef *buscomm = Protocol_GetBusDataPtr();

    buscomm->tx_dt = DWT_GetDeltaT(&buscomm->last_tx_tick);
    uint16_t len, sum = 0;   

    // to nuc
    len = 6;    // 2(head frame) + 2(len frame) + 2(verify frame)

    buscomm->BusComm_TxData[0] = 0X5A;
    buscomm->BusComm_TxData[1] = 0XA5;
    for (int i = 0; i < Const_Protocol_Transmit_BUFF_SIZE; i++) {
        if (ProtocolCmd_Send[i].bus_func != NULL) 
            len += ProtocolCmd_Send[i].bus_func(buscomm->BusComm_TxData + len);
    }
    // len += 2;       // for tail frame
    buscomm->BusComm_TxData[2] = (uint8_t)(len & 0xff);
    buscomm->BusComm_TxData[3] = (uint8_t)((len & 0xff00) >> 8);
    buscomm->BusComm_TxData[4] = 0x00;
    buscomm->BusComm_TxData[5] = 0x00;
    for (int i = 0; i < len; i++) 
        sum += buscomm->BusComm_TxData[i];

    buscomm->BusComm_TxData[4] = (uint8_t)(sum & 0xff);;
    buscomm->BusComm_TxData[5] = (uint8_t)((sum & 0xff00) >> 8);;

    buscomm->BusComm_TxData[len] = 0X7A;
    buscomm->BusComm_TxData[len + 1] = 0XA7;
    
    CDC_Transmit_FS(buscomm->BusComm_TxData, len + 2);
    buscomm->state = Protocol_STATE_CONNECTED;
}
