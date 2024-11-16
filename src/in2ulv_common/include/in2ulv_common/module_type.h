/**
 * @Description
 * @Version
 * @Author wangtao
 * @LastEditors
 * @Date 2021/7/26
 * @LastEditTime
 */

#ifndef SRC_MODULE_TYPE_H_
#define SRC_MODULE_TYPE_H_

#include <vector>

namespace inin
{
namespace in2ulv_common
{
    enum ULVModuleType
    {
        // 定位
        LOCALIZATION = 0,
        // 规划
        PLANNING,
        // 感知
        PERCEPTION,
        // 控制
        CONTROL,
        // 决策
        DECISION,
        // 底盘
        BASE,

        // MAX NUM
        // 请勿在该项后方添加枚举类型
        MODULE_MAX_NUM
    };

    /* 模块类型名称 */
    static std::vector<std::string> ULVModuleTypeName = {"定位", "规划", "感知",
                                                         "控制", "决策", "底层"};
}
}

#endif
