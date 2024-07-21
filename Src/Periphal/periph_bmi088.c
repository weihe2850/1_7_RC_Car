/*
 *  Project      : Polaris Robot
 * 
 *  FilePath     : periph_bmi088.c
 *  Description  : This file contains the bmi088 bmi088 API
 *  LastEditors  : Polaris
 *  Date         : 2022-04-16 22:53:07
 *  LastEditTime : 2024-05-19 23:19:09
 */


#include "periph_bmi088.h"
#include "sys_dwt.h"
#include "sys_const.h"
#include "alg_math.h"
#include "lib_delay.h"
#include "lib_buff.h"
#include "util_gpio.h"

BMI088_DataTypeDef BMI088_Data;	
 

/**
  * @brief      Get pinter to the bmi088 data object
  * @param      NULL
  * @retval     Pointer to bmi088 data object
  */
BMI088_DataTypeDef* BMI088_GetBMI088DataPtr() {
    return &BMI088_Data;
}

    
/**
  * @brief      Initialization bmi088
  * @param      NULL
  * @retval     NULL
  */
uint8_t BMI088_Init() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
    BMI088_ResetBMI088Data();

    uint8_t error = BMI088_NO_ERROR;
	bmi088->calibrate = 1;
    bmi088->BMI088_ACCEL_SEN = BMI088_ACCEL_6G_SEN;
    bmi088->BMI088_GYRO_SEN = BMI088_GYRO_2000_SEN;

    error = (BMI088_AccelTest() != BMI088_NO_ERROR) ? 
            BMI088_SELF_TEST_ACCEL_ERROR : BMI088_AccelInit();

    error = (BMI088_GyroTest() != BMI088_NO_ERROR) ? 
            BMI088_SELF_TEST_GYRO_ERROR : BMI088_GyroInit();

    bmi088->calibrate == 1 ? BMI088_SetOffset() : BMI088_GetOffset();

    bmi088->state = error != BMI088_NO_ERROR ? BMI088_STATE_LOST : BMI088_STATE_CONNECTED;
    return error;
}


/**
  * @brief      BMI0XX bmi088 Accel Initial
  * @param      NULL
  * @retval     NULL
*/
static uint8_t BMI088_AccelInit() {
    volatile uint8_t res = 0;

    // check commiunication
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // accel software reset
    BMI088_ACCEL_WRITE_SINGLE_REG(BMI088_ACC_SOFTRESET, BMI088_ACC_SOFTRESET_VALUE);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);

    // check commiunication is normal after reset
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // check the "who am I"
    if (res != BMI088_ACC_CHIP_ID_VALUE) return BMI088_NO_SENSOR;

    // set accel sonsor config and check
    for (int write_reg_num = 0; write_reg_num < BMI088_WRITE_ACCEL_REG_NUM; write_reg_num++) {

        BMI088_ACCEL_WRITE_SINGLE_REG(write_BMI088_accel_reg_data_error[write_reg_num][0], write_BMI088_accel_reg_data_error[write_reg_num][1]);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        BMI088_ACCEL_READ_SINGLE_REG(write_BMI088_accel_reg_data_error[write_reg_num][0], res);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        if (res != write_BMI088_accel_reg_data_error[write_reg_num][1]) 
            return write_BMI088_accel_reg_data_error[write_reg_num][2];

    }
    return BMI088_NO_ERROR;
}


/**
  * @brief      BMI0XX bmi088 Gyro Initial
  * @param      NULL
  * @retval     NULL
*/
static uint8_t BMI088_GyroInit() {
    uint8_t res = 0;

    // check commiunication
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // reset the gyro sensor
    BMI088_GYRO_WRITE_SINGLE_REG(BMI088_GYRO_SOFTRESET, BMI088_GYRO_SOFTRESET_VALUE);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);
    // check commiunication is normal after reset
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // check the "who am I"
    if (res != BMI088_GYRO_CHIP_ID_VALUE) return BMI088_NO_SENSOR;


    // set gyro sonsor config and check
    for (int write_reg_num = 0; write_reg_num < BMI088_WRITE_GYRO_REG_NUM; write_reg_num++) {

        BMI088_GYRO_WRITE_SINGLE_REG(write_BMI088_gyro_reg_data_error[write_reg_num][0], write_BMI088_gyro_reg_data_error[write_reg_num][1]);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        BMI088_GYRO_READ_SINGLE_REG(write_BMI088_gyro_reg_data_error[write_reg_num][0], res);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        if (res != write_BMI088_gyro_reg_data_error[write_reg_num][1]) 
            return write_BMI088_gyro_reg_data_error[write_reg_num][2];
    
    }

    return BMI088_NO_ERROR;
}

   
/**
  * @brief      BMI0XX bmi088 Accel function test
  * @param      NULL
  * @retval     NULL
*/
static uint8_t BMI088_AccelTest() {
    uint8_t res = 0;
    int16_t self_test_accel[2][3];
    uint8_t buff[6] = {0, 0, 0, 0, 0, 0};

    // check commiunication is normal
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // reset  bmi088 accel sensor and wait for > 50ms
    BMI088_ACCEL_WRITE_SINGLE_REG(BMI088_ACC_SOFTRESET, BMI088_ACC_SOFTRESET_VALUE);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);

    // check commiunication is normal
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    if (res != BMI088_ACC_CHIP_ID_VALUE) return BMI088_NO_SENSOR;

    // set the accel register
    for (int write_reg_num = 0; write_reg_num < 4; write_reg_num++) {

        BMI088_ACCEL_WRITE_SINGLE_REG(write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num][0], write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num][1]);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        BMI088_ACCEL_READ_SINGLE_REG(write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num][0], res);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        if (res != write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num][1]) 
            return write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num][2];

        // accel conf and accel range  . the two register set need wait for > 50ms
        DWT_Delayms(BMI088_LONG_DELAY_TIME);
    }

    // self test include postive and negative
    for (int write_reg_num = 0; write_reg_num < 2; write_reg_num++) {

        BMI088_ACCEL_WRITE_SINGLE_REG(write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num + 4][0], write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num + 4][1]);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        BMI088_ACCEL_READ_SINGLE_REG(write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num + 4][0], res);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

        if (res != write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num + 4][1]) 
            return write_BMI088_ACCEL_self_test_Reg_Data_Error[write_reg_num + 4][2];
    
        // accel conf and accel range  . the two register set need wait for > 50ms
        DWT_Delayms(BMI088_LONG_DELAY_TIME);

        // read response accel
        BMI088_ACCEL_READ_MULI_REG(BMI088_ACCEL_XOUT_L, buff, 6);

        self_test_accel[write_reg_num][0] = (int16_t)((buff[1]) << 8) | buff[0];
        self_test_accel[write_reg_num][1] = (int16_t)((buff[3]) << 8) | buff[2];
        self_test_accel[write_reg_num][2] = (int16_t)((buff[5]) << 8) | buff[4];
    }

    // set self test off
    BMI088_ACCEL_WRITE_SINGLE_REG(BMI088_ACC_SELF_TEST, BMI088_ACC_SELF_TEST_OFF);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_SELF_TEST, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    if (res != (BMI088_ACC_SELF_TEST_OFF)) return BMI088_ACC_SELF_TEST_ERROR;


    // reset the accel sensor
    BMI088_ACCEL_WRITE_SINGLE_REG(BMI088_ACC_SOFTRESET, BMI088_ACC_SOFTRESET_VALUE);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);

    if ((self_test_accel[0][0] - self_test_accel[1][0] < 1365) || (self_test_accel[0][1] - self_test_accel[1][1] < 1365) || (self_test_accel[0][2] - self_test_accel[1][2] < 680))
        return BMI088_SELF_TEST_ACCEL_ERROR;


    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_ACCEL_READ_SINGLE_REG(BMI088_ACC_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    return BMI088_NO_ERROR;
}


/**
  * @brief      BMI0XX bmi088 Gyro function test
  * @param      NULL
  * @retval     NULL
*/
static uint8_t BMI088_GyroTest() {
    uint8_t res = 0;
    uint8_t retry = 0;
    
    // check commiunication is normal
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    // reset the gyro sensor
    BMI088_GYRO_WRITE_SINGLE_REG(BMI088_GYRO_SOFTRESET, BMI088_GYRO_SOFTRESET_VALUE);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);

    // check commiunication is normal after reset
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
    BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_CHIP_ID, res);
    DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);

    BMI088_GYRO_WRITE_SINGLE_REG(BMI088_GYRO_SELF_TEST, BMI088_GYRO_TRIG_BIST);
    DWT_Delayms(BMI088_LONG_DELAY_TIME);

    do {
        BMI088_GYRO_READ_SINGLE_REG(BMI088_GYRO_SELF_TEST, res);
        DWT_Delayms(BMI088_COM_WAIT_SENSOR_TIME);
        retry++;
    } while (!(res & BMI088_GYRO_BIST_RDY) && retry < 10);

    if (retry == 10) return BMI088_SELF_TEST_GYRO_ERROR;


    if (res & BMI088_GYRO_BIST_FAIL) return BMI088_SELF_TEST_GYRO_ERROR;


    return BMI088_NO_ERROR;
}


/**
  * @brief      Set offset
  * @param      NULL
  * @retval     NULL
*/
void BMI088_SetOffset() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();

    // offset
    float gyroMax[3], gyroMin[3];
    float gNormTemp, gNormMax, gNormMin, gNormDiff, gyroDiff[3];
    uint8_t buff[8] = {0, 0, 0, 0, 0, 0};
    static uint16_t CaliTimes = 6000;
    int16_t caliCount = 0;
    float start_time = DWT_GetTimeline_s();

    do {
        if (DWT_GetTimeline_s() - start_time > 10) {
            bmi088->gyro_offset[0] = BMI088_GxOFFSET;
            bmi088->gyro_offset[1] = BMI088_GyOFFSET;
            bmi088->gyro_offset[2] = BMI088_GzOFFSET;
            bmi088->gNorm = BMI088_gNORM;
            break;
        }
        DWT_Delay(0.005);
        bmi088->gNorm = 0;
        bmi088->gyro_offset[0] = 0;
        bmi088->gyro_offset[1] = 0;
        bmi088->gyro_offset[2] = 0;

        for (uint16_t i = 0; i < CaliTimes; i++) {
            BMI088_ACCEL_READ_MULI_REG(BMI088_ACCEL_XOUT_L, buff, 6);
            bmi088->accel.x   = ((int16_t)((buff[1]) << 8) | buff[0]) * bmi088->BMI088_ACCEL_SEN;
            bmi088->accel.y   = ((int16_t)((buff[3]) << 8) | buff[2]) * bmi088->BMI088_ACCEL_SEN;
            bmi088->accel.z   = ((int16_t)((buff[5]) << 8) | buff[4]) * bmi088->BMI088_ACCEL_SEN;

            gNormTemp = sqrtf(bmi088->accel.x * bmi088->accel.x +
                              bmi088->accel.y * bmi088->accel.y +
                              bmi088->accel.z * bmi088->accel.z);
            bmi088->gNorm += gNormTemp;

            BMI088_GYRO_READ_MULI_REG(BMI088_GYRO_CHIP_ID, buff, 8);
            if (buff[0] == BMI088_GYRO_CHIP_ID_VALUE) {
                bmi088->gyro.pitch = ((int16_t)((buff[3]) << 8) | buff[2]) * bmi088->BMI088_GYRO_SEN;
                bmi088->gyro.row   = ((int16_t)((buff[5]) << 8) | buff[4]) * bmi088->BMI088_GYRO_SEN;
                bmi088->gyro.yaw   = ((int16_t)((buff[7]) << 8) | buff[6]) * bmi088->BMI088_GYRO_SEN;
                bmi088->gyro_offset[0] += bmi088->gyro.pitch;
                bmi088->gyro_offset[1] += bmi088->gyro.row;
                bmi088->gyro_offset[2] += bmi088->gyro.yaw;
            }

            if (i == 0) {
                gNormMax = gNormTemp;
                gNormMin = gNormTemp;
                gyroMax[0] = bmi088->gyro.pitch;
                gyroMin[0] = bmi088->gyro.pitch;
                gyroMax[1] = bmi088->gyro.row;
                gyroMin[1] = bmi088->gyro.row;
                gyroMax[2] = bmi088->gyro.yaw;
                gyroMin[2] = bmi088->gyro.yaw;
            }
            else {
                GetMaxandMinRange(gNormTemp, gNormMax, gNormMin);
                GetMaxandMinRange(bmi088->gyro.pitch, gyroMax[0], gyroMin[0]);
                GetMaxandMinRange(bmi088->gyro.row, gyroMax[1], gyroMin[1]);
                GetMaxandMinRange(bmi088->gyro.yaw, gyroMax[2], gyroMin[2]);                
            }

            gNormDiff = gNormMax - gNormMin;
            for (uint8_t j = 0; j < 3; j++)
                gyroDiff[j] = gyroMax[j] - gyroMin[j];
            if (gNormDiff > 0.7f || gyroDiff[0] > 0.15f || gyroDiff[1] > 0.15f || gyroDiff[2] > 0.15f)
                break;
            DWT_Delay(0.0005);
        }

        bmi088->gNorm /= (float)CaliTimes;
        for (uint8_t i = 0; i < 3; i++)
            bmi088->gyro_offset[i] /= (float)CaliTimes;

        caliCount++;
    }  while (gNormDiff > 0.7f ||
             fabsf(bmi088->gNorm - 9.8f) > 0.5f ||
             gyroDiff[0] > 0.15f ||
             gyroDiff[1] > 0.15f ||
             gyroDiff[2] > 0.15f ||
             fabsf(bmi088->gyro_offset[0]) > 0.01f ||
             fabsf(bmi088->gyro_offset[1]) > 0.01f ||
             fabsf(bmi088->gyro_offset[2]) > 0.01f);
             
    bmi088->accelScale = Gravity / bmi088->gNorm;
}


/**
  * @brief      Get Bmi088 offset
  * @param      NULL
  * @retval     NULL
*/
void BMI088_GetOffset() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();

    float offset[4] = {0xff, 0xff, 0xff, 0xff};
    if (offset[0] > 0.015f ||
        offset[1] > 0.015f ||
        offset[2] > 0.015f ||
        offset[3] > 11.0f  ||
        offset[3] < 9.5f) 
        {
            bmi088->gyro_offset[0] = BMI088_GxOFFSET;
            bmi088->gyro_offset[1] = BMI088_GyOFFSET;
            bmi088->gyro_offset[2] = BMI088_GzOFFSET;
            bmi088->gNorm = BMI088_gNORM;
            bmi088->accelScale = 9.81f / bmi088->gNorm;
        }
    else {
        for (int i = 0; i < 3; i++) 
            bmi088->gyro_offset[i] = offset[i];
    
        bmi088->gNorm = offset[3];
        bmi088->accelScale = 9.81f / bmi088->gNorm;
    }
}


/**
  * @brief      Judge bmi088 offline
  * @param      NULL
  * @retval     Offline or not��1 is offline��0 is not��
  */
uint8_t BMI088_IsBMI088Offline() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
 
    if ((DWT_GetDeltaTWithOutUpdate(&bmi088->last_update_tick)) > Const_BMI088_OFFLINE_TIME)
        bmi088->state = BMI088_STATE_LOST;
    return (bmi088->state != BMI088_STATE_CONNECTED);
}


/**
  * @brief      Reset bmi088 data object
  * @param      NUULL
  * @retval     NUL
  */
void BMI088_ResetBMI088Data() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
    
    bmi088->accel.x         = 0;
    bmi088->accel.y         = 0;
    bmi088->accel.z         = 0;
    bmi088->gyro.pitch      = 0;
    bmi088->gyro.row        = 0;
    bmi088->gyro.yaw        = 0;
    bmi088->temperature     = 0;
    bmi088->caliOffset      = 1;
    bmi088->update_dt       = 0;
	bmi088->last_update_tick = 0;
}


/**
  * @brief      BMI088 decode data function    ��For BMI088)
  * @param      NULL
  * @retval     NULL
  */
void BMI088_DecodeData() {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
    uint8_t buff[8] = {0, 0, 0, 0, 0, 0};
    int16_t raw_temp;

    bmi088->update_dt          = DWT_GetDeltaT(&bmi088->last_update_tick);

    BMI088_ACCEL_READ_MULI_REG(BMI088_ACCEL_XOUT_L, buff, 6);

    bmi088->accel.x   = ((int16_t)((buff[1]) << 8) | buff[0]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;
    bmi088->accel.y   = ((int16_t)((buff[3]) << 8) | buff[2]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;
    bmi088->accel.z   = ((int16_t)((buff[5]) << 8) | buff[4]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;

    BMI088_GYRO_READ_MULI_REG(BMI088_GYRO_CHIP_ID, buff, 8);
    if (buff[0] == BMI088_GYRO_CHIP_ID_VALUE) {
        if (bmi088->caliOffset) {
            bmi088->gyro.pitch = ((int16_t)((buff[3]) << 8) | buff[2]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[0];
            bmi088->gyro.row   = ((int16_t)((buff[5]) << 8) | buff[4]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[1];
            bmi088->gyro.yaw   = ((int16_t)((buff[7]) << 8) | buff[6]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[2];
        }
        else {
            bmi088->gyro.pitch = ((int16_t)((buff[3]) << 8) | buff[2]) * bmi088->BMI088_GYRO_SEN;
            bmi088->gyro.row   = ((int16_t)((buff[5]) << 8) | buff[4]) * bmi088->BMI088_GYRO_SEN;
            bmi088->gyro.yaw   = ((int16_t)((buff[7]) << 8) | buff[6]) * bmi088->BMI088_GYRO_SEN;
        }
    }
    BMI088_ACCEL_READ_MULI_REG(BMI088_TEMP_M, buff, 2);

    raw_temp = (int16_t)((buff[0] << 3) | (buff[1] >> 5));
    if (raw_temp > 1023) 
        raw_temp -= 2048;

    bmi088->temperature = raw_temp * BMI088_TEMP_FACTOR + BMI088_TEMP_OFFSET;
    bmi088->state              = BMI088_STATE_CONNECTED; 
}


/**
  * @brief      BMI088 decode temperature data function    For BMI088)
  * @param      rx_buff :BMI088 SPI temperature buff
  * @retval     NULL
  */
void BMI088_TempReadOver(uint8_t *rx_buff) {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
   
    bmi088->update_dt          = DWT_GetDeltaT(&bmi088->last_update_tick);
    
    int16_t raw_temp;
    raw_temp = (int16_t)((rx_buff[0] << 3) | (rx_buff[1] >> 5));

    if (raw_temp > 1023) 
        raw_temp -= 2048;

    bmi088->temperature = raw_temp * BMI088_TEMP_FACTOR + BMI088_TEMP_OFFSET;
    bmi088->state              = BMI088_STATE_CONNECTED; 
}


/**
  * @brief      BMI088 decode temperature data function    ��For BMI088)
  * @param      rx_buff :BMI088 SPI accel buff
  * @retval     NULL
  */
void BMI088_AccelReadOver(uint8_t *rx_buff) {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
   
    bmi088->update_dt          = DWT_GetDeltaT(&bmi088->last_update_tick);

    bmi088->accel.x = ((int16_t)((rx_buff[1]) << 8) | rx_buff[0]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;
    bmi088->accel.y = ((int16_t)((rx_buff[3]) << 8) | rx_buff[2]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;
    bmi088->accel.z = ((int16_t)((rx_buff[5]) << 8) | rx_buff[4]) * bmi088->BMI088_ACCEL_SEN * bmi088->accelScale;

    bmi088->sensor_time = ((uint32_t)((rx_buff[8] << 16) | (rx_buff[7] << 8) | rx_buff[6])) * 39.0625f;

    bmi088->state              = BMI088_STATE_CONNECTED; 
}


/**
  * @brief      BMI088 decode temperature data function
  * @param      rx_buff :bmi088 SPI gyro buff
  * @retval     NULL
  */
void BMI088_GyroReadOver(uint8_t *rx_buff) {
    BMI088_DataTypeDef *bmi088 = BMI088_GetBMI088DataPtr();
   
    bmi088->update_dt          = DWT_GetDeltaT(&bmi088->last_update_tick);
    
    if (bmi088->caliOffset) {
        bmi088->gyro.pitch = ((int16_t)((rx_buff[1]) << 8) | rx_buff[0]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[0];
        bmi088->gyro.row   = ((int16_t)((rx_buff[3]) << 8) | rx_buff[2]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[1];
        bmi088->gyro.yaw   = ((int16_t)((rx_buff[5]) << 8) | rx_buff[4]) * bmi088->BMI088_GYRO_SEN - bmi088->gyro_offset[2];
    }
    else {
        bmi088->gyro.pitch = ((int16_t)((rx_buff[1]) << 8) | rx_buff[0]) * bmi088->BMI088_GYRO_SEN;
        bmi088->gyro.row   = ((int16_t)((rx_buff[3]) << 8) | rx_buff[2]) * bmi088->BMI088_GYRO_SEN;
        bmi088->gyro.yaw   = ((int16_t)((rx_buff[5]) << 8) | rx_buff[4]) * bmi088->BMI088_GYRO_SEN;
    }
    

    bmi088->state              = BMI088_STATE_CONNECTED; 
}
