/*
 *  Project      : Polaris Robot
 * 
 *  FilePath     : periph_bmi088.h
 *  Description  : This file contains the functions of 
 *  LastEditors  : Polaris
 *  Date         : 2022-04-16 22:53:30
 *  LastEditTime : 2024-05-19 23:15:56
 */


#ifndef BMI088_PERIPH_H
#define BMI088_PERIPH_H

#ifdef __cplusplus
extern "C" {
#endif

#include "util_spi.h"
#include "util_gpio.h"
#include "reg_bmi088.h"


#define SPI_DMA_GYRO_LENGHT       8
#define SPI_DMA_ACCEL_LENGHT      9
#define SPI_DMA_ACCEL_TEMP_LENGHT 4
#define BMI088_GYRO_RX_BUF_DATA_OFFSET  1
#define BMI088_ACCEL_RX_BUF_DATA_OFFSET 2

#define BMI088_ACCEL_WRITE_SINGLE_REG(reg, data)                        \
    {                                                                   \
        GPIO_Reset(CS_ACCEL);                                           \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, reg);               \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, data);              \
        GPIO_Set(CS_ACCEL);                                             \
    }
#define BMI088_ACCEL_READ_SINGLE_REG(reg, data)                         \
    {                                                                   \
        GPIO_Reset(CS_ACCEL);                                           \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, ((reg) | 0x80));    \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, 0x55);              \
        (data) = Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, 0x55);     \
        GPIO_Set(CS_ACCEL);                                             \
    }
#define BMI088_ACCEL_READ_MULI_REG(reg, data, len)                      \
    {                                                                   \
        GPIO_Reset(CS_ACCEL);                                           \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, ((reg) | 0x80));    \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, ((reg) | 0x80));    \
        Spi_ReadMuliReg(Const_BMI088_SPI_HANDLER, data, len);           \
        GPIO_Set(CS_ACCEL);                                             \
    }
#define BMI088_GYRO_WRITE_SINGLE_REG(reg, data)                         \
    {                                                                   \
        GPIO_Reset(CS_GYRO);                                            \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, reg);               \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, data);              \
        GPIO_Set(CS_GYRO);                                              \
    }
#define BMI088_GYRO_READ_SINGLE_REG(reg, data)                          \
    {                                                                   \
        GPIO_Reset(CS_GYRO);                                            \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, ((reg) | 0x80));    \
        (data) = Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, 0x55);     \
        GPIO_Set(CS_GYRO);                                              \
    }
#define BMI088_GYRO_READ_MULI_REG(reg, data, len)                       \
    {                                                                   \
        GPIO_Reset(CS_GYRO);                                            \
        Spi_SwapAbyteData(Const_BMI088_SPI_HANDLER, ((reg) | 0x80));    \
        Spi_ReadMuliReg(Const_BMI088_SPI_HANDLER, data, len);           \
        GPIO_Set(CS_GYRO);                                              \
    }

typedef enum {
    BMI088_STATE_NULL      = 0,
    BMI088_STATE_CONNECTED = 1,
    BMI088_STATE_LOST      = 2,
    BMI088_STATE_ERROR     = 3,
    BMI088_STATE_PENDING   = 4
} BMI088_BMI088StateEnum;

typedef struct {
    float x;
    float y;
    float z;
} BMI088_BMI088AccelTypeDef;

typedef struct {
    float yaw;
    float pitch;
    float row;
} BMI088_BMI088SpeedTypeDef;

typedef struct {
    BMI088_BMI088StateEnum state;
    
    BMI088_BMI088AccelTypeDef accel;        //  real data
    BMI088_BMI088SpeedTypeDef gyro;        //  real data

    float d_accel[3];
    float d_gyro[3];
    
    float gyro_offset[3];
    float accel_offset[3];
    float gNorm;
    float accelScale;
    float sensor_time;
    float temperature;

    uint8_t caliOffset;
    float BMI088_ACCEL_SEN;
    float BMI088_GYRO_SEN;
    uint8_t calibrate;

    float update_dt;
    uint32_t last_update_tick;
} BMI088_DataTypeDef;



BMI088_DataTypeDef* BMI088_GetBMI088DataPtr(void);
uint8_t BMI088_Init(void);
static uint8_t BMI088_AccelInit(void);
static uint8_t BMI088_GyroInit(void);
static uint8_t BMI088_AccelTest(void);
static uint8_t BMI088_GyroTest(void);
uint8_t BMI088_IsBMI088Offline(void);
void BMI088_SetOffset(void);
void BMI088_GetOffset(void);
void BMI088_DecodeData(void);
void BMI088_ResetBMI088Data(void);
void BMI088_TempReadOver(uint8_t *rx_buff);
void BMI088_AccelReadOver(uint8_t *rx_buff);
void BMI088_GyroReadOver(uint8_t *rx_buff);


#endif

#ifdef __cplusplus
}
#endif
