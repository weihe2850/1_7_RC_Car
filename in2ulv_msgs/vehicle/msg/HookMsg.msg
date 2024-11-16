# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
# AHD General Status 0x340
uint8 AHDCortSts    # 自动脱挂钩纠偏状态
int32 HokPosVal     # 挂钩位置
uint8 HokCntpintSts # 挂钩对位状态
uint8 HokCntSts     # 挂钩连接状态
uint8 HokRstSts     # 挂钩复位状态
