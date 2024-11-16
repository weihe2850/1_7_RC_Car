# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 模块信息
# IDU Automatic Hook Status 0x31E
uint8 AHDModRqst    # 自动脱挂钩功能请求
uint8 BckUpSts      # 倒车状态
uint8 AHDRstRqst    # 自动脱挂钩重置请求
uint8 AHDPosRqstV   # 自动脱挂钩位置请求有效性
int32 AHDPosRqst    # 自动脱挂钩位置请求