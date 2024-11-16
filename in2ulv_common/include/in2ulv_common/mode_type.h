/**
 * @Description 
 * @Version 
 * @Author wangtao
 * @LastEditors 
 * @Date 2021/8/16
 * @LastEditTime 
 */

#ifndef SRC_MODE_TYPE_H_
#define SRC_MODE_TYPE_H_

namespace inin
{
    namespace in2ulv_common
    {
        enum ULVModeType
        {
            EMERGENCY = 0,      // 紧急模式

            MANUAL,     // 手动模式

            AUTO,       // 自动模式
        };

        static std::vector<std::string> ULVModeTypeName = {"紧急", "手动", "自动"};
    }
}

#endif
