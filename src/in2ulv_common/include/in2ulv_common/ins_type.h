/**
 * @Description
 * @Version
 * @Author LEEKA
 * @LastEditors
 * @Date 2021/8/16
 * @LastEditTime
 */
#pragma once
namespace inin
{
namespace in2ulv_common
{
    enum INSType
    {
        //No Sulotion 无解
        NONE = 0,
        //Position has been fixed by the FIxed Position command
        FIXEDPOAS = 1,
        //Position has been fixed by the FIxed Height/Auto command(暂不支持)
        FIXEDHEIGHT = 2,
        //Velocity computed using instantaneous Doppler
        DOPPLER_VELOCITY = 8,
        //Single Point Position
        SINGLE = 16,
        //Pseudorange differential solution
        PSRDIFF = 17,
        //Solution calculated using carrections from an SBAS
        SBAS = 18,
        //Floating L1 Ambiguity solution
        L1_FLOAT = 32,
        //Floating ionospheric-free ambiguity solution
        IONOFREE_FLOAT = 33,
        //Floating naeeow-lane ambiguity solution
        NARROW_FLOAT = 34,
        //Integer L1 ambiguity solution
        L1_INT = 48,
        //Integer wide-lane ambiguity solution
        WIDE_INT = 49,
        //Integer narroe-lane ambiguity solution
        NARROW_INT = 50
    };
}
}