/*
 *  Project      : Polaris Robot
 * 
 *  FilePath     : alg_math.c
 *  Description  : This file contains the math calculate tools
 *  LastEditors  : Polaris
 *  Date         : 2022-04-16 22:53:06
 *  LastEditTime : 2023-04-02 12:01:08
 */


#include "alg_math.h"


/**
  * @brief      Radian to angle
  * @param      Converted radian
  * @retval     result
  */
float Math_Rad2Angle(float rad) {
    return (rad * 180.0f / PI);
}


/**
  * @brief      Radian to angle
  * @param      Converted radian
  * @retval     result
  */
float Math_Angle2Rad(float ang) {
    return (ang * PI / 180.0f);
}


/**
  * @brief      Continuous power function with linear segment near the origin
  * @param      NULL
  * @retval     result
  */
float Math_Fal(float e, float alpha, float zeta) {
    int16_t s = 0;
    float fal_output = 0;
    s = (Math_Sign(e + zeta) - Math_Sign(e - zeta)) / 2;
    fal_output = e * s / (powf(zeta, 1 - alpha)) + powf(fabs(e), alpha) * Math_Sign(e) * (1 - s);
    return fal_output;
}


/**
  * @brief      Calculate fsg
  * @param      x :Number to be calc
  * @retval     result
  */
int16_t Math_Fsg(float x, float d) {
  int16_t output = 0;
  output = (Math_Sign(x + d) - Math_Sign(x - d)) / 2;
  return output;
}


/**
  * @brief      Positive and negative judgment function
  * @param      x :Number to be judged
  * @retval     Positive output 1, negative output - 1, otherwise output 0
  */
int16_t Math_Sign(float x) {
    int16_t output = 0;
    if (x > 0) {
        output = 1;
    } 
    else if (x < 0) {
        output = -1;
    }
    else 
        output = 0;
    return output;
}


/**
  * @brief      This shit is used to calculate the quick square root
  * @param      x :Number of square root
  * @retval     One third of the open results
  */
float Math_InvSqrt(float x) {
	float halfx = 0.5f * x;
	float y = x;
	long i = *(long*) & y;
	i = 0x5f3759df - (i >> 1);
	y = *(float*) & i;
	y = y * (1.5f - (halfx * y * y));
	return y;
}


/**
  * @brief      Calculation differential (only two order)(To be improved)
  * @param      arr :point to be differential value
  * @param      order :The differential order
  * @retval     NULL
  */
float Math_Differential(float arr[], uint8_t order, float dt) {
    float value;
    if (dt <= 0.0f) dt = 1;
    switch (order) {
        case 1:
            value = (arr[0] - arr[1]) / dt;
            break;
        case 2:
            value = (arr[2] - 2 * arr[1] + arr[0]) / dt;
            break;
        default:
            value = arr[0];
            break;
    }
    return value;
}


/**
  * @brief      Initialize ramp function control parameters
  * @param      pparam: Pointer to ramp function control parameter
  * @param      kp: P factor
  * @param      ki: I factor
  * @param      kd: D factor
  * @param      sum_max: Integral limiting
  * @param      output_max: Output limiting
  * @retval     NULL
  */
void Math_InitSlopeParam(Math_SlopeParamTypeDef* pparam, float acc, float dec) {
    pparam->acc = acc;
    pparam->dec = dec;
}


/**
  * @brief      Calculate slope function setting
  * @param      rawref: Current setting value
  * @param      targetref: Target set point
  * @param      pparam: Pointer to ramp function control parameter
  * @retval     Slope function setting value. If slope function is not enabled (parameter is 0), the target setting value is returned
  */
float Math_CalcSlopeRef(float rawref, float targetref, Math_SlopeParamTypeDef* pparam) {
    float newref;
    if (pparam->acc == 0 | pparam->dec == 0) 
        return targetref;
    if (rawref < targetref - pparam->acc) {
        newref = rawref + pparam->acc;
    }
    else if (rawref > targetref + pparam->dec) {
        newref = rawref - pparam->dec;
    }
    else {
        newref = targetref;
    }
    return newref;
}


/**
  * @brief      Calculate the absolute slope function setting value
  * @param      rawref: Current setting value
  * @param      targetref: Target set point
  * @param      pparam: Pointer to ramp function control parameter
  * @retval     Absolute value ramp function setting value. If ramp function is not enabled, the target setting value is returned
  */
float Math_CalcAbsSlopeRef(float rawref, float targetref, Math_SlopeParamTypeDef* pparam) {
    float newref;
    if (pparam->acc == 0 | pparam->dec == 0) 
        return targetref;
    if (rawref > 0) {
        if (rawref < targetref - pparam->acc) {
            newref = rawref + pparam->acc;
        }
        else if (rawref > targetref + pparam->dec) {
            newref = rawref - pparam->dec;
        }
        else {
            newref = targetref;
        }
    }
    else {
        if (rawref > targetref + pparam->acc) {
            newref = rawref - pparam->acc;
        }
        else if (rawref < targetref - pparam->dec) {
            newref = rawref + pparam->dec;
        }
        else {
            newref = targetref;
        }
    }
    return newref;
}
