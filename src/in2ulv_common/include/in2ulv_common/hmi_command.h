/**
 * @Description 
 * @Version 
 * @Author wangtao
 * @LastEditors 
 * @Date 2021/8/2
 * @LastEditTime 
 */

#ifndef SRC_HMI_COMMAND_H_
#define SRC_HMI_COMMAND_H_

namespace inin
{
namespace in2ulv_common
{
    enum ULVHMICommand
    {
        HMI_IDLE,       // 此指令用于行为树指令判断，不对外开放

        /* 手动指令 */
        HMI_RECORD_PATH,
        HMI_CLEAR,
        HMI_STEP_OVER,

        /* 自动指令 */
        HMI_GET_HEAD_FOR_GOAL,
        HMI_GET_HEAD_FOR_GOAL_PAUSE,
        HMI_GET_HEAD_FOR_GOAL_CONTINUE,
        HMI_GET_LINK_SUPPLY,
        HMI_GET_LINK_SUPPLY_PAUSE,
        HMI_GET_LINK_SUPPLY_CONTINUE,
        HMI_GET_LINK_SUPPLY_RESTART,
        HMI_GET_UNLINK_SUPPLY,
        HMI_GET_WAIT_COMMAND,
        HMI_GET_START,  // 对应 wait_command
    };

    static std::vector<std::string> ULVHMICommandName = {"空闲",
                                                         "录点", "清空", "跳过",
                                                         "冲锋", "冲锋暂停", "冲锋继续",
                                                         "挂钩", "挂钩暂停", "挂钩继续", "挂钩重启",
                                                         "脱钩", "待命", "开始"};
}
}

#endif
