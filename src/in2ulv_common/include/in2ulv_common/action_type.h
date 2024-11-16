/**
 * @Description
 * @Version
 * @Author wangtao
 * @LastEditors
 * @Date 2021/7/26
 * @LastEditTime
 */

#ifndef SRC_ACTION_TYPE_H_
#define SRC_ACTION_TYPE_H_

namespace inin
{
namespace in2ulv_common
{
    enum ULVActionType
    {
        INIT = 0,

        RECORD_PATH,

        HEAD_FOR_GOAL,

        LINK_SUPPLY,
        LINK_SUPPLY_PAUSE,
        LINK_SUPPLY_CONTINUE,
        LINK_SUPPLY_RESTART,

        UNLINK_SUPPLY,

        STAND_BY,
    };
}
}

#endif
