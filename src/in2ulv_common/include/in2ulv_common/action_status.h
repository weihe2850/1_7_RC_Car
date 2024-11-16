/**
 * @Description
 * @Version
 * @Author wangtao
 * @LastEditors
 * @Date 2021/7/26
 * @LastEditTime
 */

#ifndef SRC_ACTION_STATUS_H_
#define SRC_ACTION_STATUS_H_

namespace inin
{
namespace in2ulv_common
{
    enum ULVActionStatus
    {
        IDLE = 0,
        RUNNING,
        SUCCESS,
        FAILURE,
    };

    static std::vector<std::string> ULVActionStatusName = {"空闲", "运行", "成功", "失败"};
}
}

#endif
