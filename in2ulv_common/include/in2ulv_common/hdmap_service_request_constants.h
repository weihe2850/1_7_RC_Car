/*
 * @Author: PanMiaoxin
 * @Date: 2022-04-20 20:45:48
 * @LastEditors: PanMiaoxin
 * @LastEditTime: 2022-04-20 20:50:51
 * @Description: file content
 */


#ifndef HADMAP_SERVICE_REQUEST_CONSTANTS_H
#define HADMAP_SERVICE_REQUEST_CONSTANTS_H

namespace inin
{
namespace in2ulv_common
{
    enum HADMapServiceRequestConstants
    {
        FULL_MAP = 0,
        ALL_PRIMITIVES,
        DRIVEABLE_GEOMETRY,
        REGULATORY_ELEMENTS,
        STATIC_OBJECTS
    };

}
}

#endif
