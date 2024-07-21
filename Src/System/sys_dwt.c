/*
 *  Project      : Polaris Robot 
 *  
 *  FilePath     : sys_dwt.c
 *  Description  : Data Watch point and Trace
 *  LastEditors  : Polaris
 *  Date         : 2023-02-10 13:25:11
 *  LastEditTime : 2024-05-19 23:18:54
 */


#include "sys_dwt.h"

DWT_DataTypeDef DWTData;

void DWT_Init(uint32_t CPU_Freq_mHz) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
    DWT->CYCCNT = (uint32_t)0u;
    DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;

    dwt->CPU_FREQ_Hz = CPU_Freq_mHz * 1000000;
    dwt->CPU_FREQ_Hz_ms = dwt->CPU_FREQ_Hz / 1000;
    dwt->CPU_FREQ_Hz_us = dwt->CPU_FREQ_Hz / 1000000;
    dwt->CYCCNT_RountCount = 0;
    dwt->CYCCNT_LAST = 0;
}


DWT_DataTypeDef* DWT_GetDWTDataPtr() {
    return &DWTData;
}


float DWT_GetDeltaT(uint32_t *cnt_last) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    volatile uint32_t cnt_now = DWT->CYCCNT;
    float dt = ((uint32_t)(cnt_now - *cnt_last)) / ((float)(dwt->CPU_FREQ_Hz));
    *cnt_last = cnt_now;

    DWT_CNT_Update();
    return dt;
}


float DWT_GetDeltaTWithOutUpdate(uint32_t *cnt_last) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    float dt = ((uint32_t)(uint32_t)(DWT->CYCCNT - *cnt_last)) / ((float)(dwt->CPU_FREQ_Hz));

    DWT_CNT_Update();
    return dt;
}


double DWT_GetDeltaT64(uint32_t *cnt_last) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    volatile uint32_t cnt_now = DWT->CYCCNT;
    double dt = ((uint32_t)(cnt_now - *cnt_last)) / ((double)(dwt->CPU_FREQ_Hz));
    *cnt_last = cnt_now;

    DWT_CNT_Update();
    return dt;
}


void DWT_SysTimeUpdate() {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();
    
    volatile uint32_t cnt_now = DWT->CYCCNT;
    uint64_t CNT_TEMP1, CNT_TEMP2, CNT_TEMP3;

    DWT_CNT_Update();

    dwt->CYCCNT64 = (uint64_t)dwt->CYCCNT_RountCount * (uint64_t)UINT32_MAX + (uint64_t)cnt_now;
    CNT_TEMP1 = dwt->CYCCNT64 / dwt->CPU_FREQ_Hz;
    CNT_TEMP2 = dwt->CYCCNT64 - CNT_TEMP1 * dwt->CPU_FREQ_Hz;
    dwt->SysTime.s = CNT_TEMP1;
    dwt->SysTime.ms = CNT_TEMP2 / dwt->CPU_FREQ_Hz_ms;
    CNT_TEMP3 = CNT_TEMP2 - dwt->SysTime.ms * dwt->CPU_FREQ_Hz_ms;
    dwt->SysTime.us = CNT_TEMP3 / dwt->CPU_FREQ_Hz_us;
    dwt->SysTime.ms_tick = dwt->SysTime.s * 1000 + dwt->SysTime.ms;
}


float DWT_GetTimeline_s() {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    DWT_SysTimeUpdate();

    float DWT_Timelinef32 = dwt->SysTime.s + dwt->SysTime.ms * 0.001f + dwt->SysTime.us * 0.000001f;

    return DWT_Timelinef32;
}


float DWT_GetTimeline_ms() {

    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    DWT_SysTimeUpdate();

    float DWT_Timelinef32 = dwt->SysTime.s * 1000 + dwt->SysTime.ms + dwt->SysTime.us * 0.001f;

    return DWT_Timelinef32;
}


uint64_t DWT_GetTimeline_us() {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();

    DWT_SysTimeUpdate();

    uint64_t DWT_Timelinef32 = dwt->SysTime.s * 1000000 + dwt->SysTime.ms * 1000 + dwt->SysTime.us;

    return DWT_Timelinef32;
}


void DWT_CNT_Update() {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();
	static volatile uint8_t pending = 0;
    if (pending == 0) {
        pending = 1;
        volatile uint32_t cnt_now = DWT->CYCCNT;

        if (cnt_now < dwt->CYCCNT_LAST)
            dwt->CYCCNT_RountCount++;

        dwt->CYCCNT_LAST = cnt_now;
        pending = 0;
    }
}


void DWT_Delay(float Delay) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();
    uint32_t tickstart = DWT->CYCCNT;
    float wait = Delay;

    while ((DWT->CYCCNT - tickstart) < wait * (float)dwt->CPU_FREQ_Hz)
    {
    }
}


void DWT_Delayms(float Delay) {
    DWT_DataTypeDef* dwt = DWT_GetDWTDataPtr();
    uint32_t tickstart = DWT->CYCCNT;
    float wait = Delay;

    while ((DWT->CYCCNT - tickstart) < wait * (float)dwt->CPU_FREQ_Hz_ms)
    {
    }
}
