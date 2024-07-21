/*
 *  Project      : Polaris Robot
 * 
 *  FilePath     : util_spi.h
 *  Description  : This file contains the functions of SPI
 *  LastEditors  : Polaris
 *  Date         : 2022-04-16 22:53:30
 *  LastEditTime : 2024-05-19 23:36:33
 */


#ifndef SPI_UTIL_H
#define SPI_UTIL_H

#ifdef __cplusplus
extern "C" {
#endif 

#include "spi.h"
#include "dma.h"


void Spi_Init(SPI_HandleTypeDef *hspi);
void Spi_ReceiveData(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t len);
void Spi_TransmitData(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t len);
void Spi_ReceiveDataDMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t len);
void Spi_TransmitDataDMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t len);
uint8_t Spi_SwapAbyteData(SPI_HandleTypeDef *hspi, uint8_t txdata);
void Spi_ReadMuliReg(SPI_HandleTypeDef *hspi, uint8_t *rx_data, uint8_t len);
void Spi_SwapData(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t len);
void Spi_SwapDataDMA(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t len);
void Spi_ErrorHandler(uint32_t ret);


#endif

#ifdef __cplusplus
}
#endif
