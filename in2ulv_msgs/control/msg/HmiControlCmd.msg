# 帧头，包含时间戳信息
std_msgs/Header header

# 主命令模式
uint8 cmd

# 子命令类型
uint8 subcmd

# 命令对应的值
uint8 value

# 站点ID
uint32 stationId

# 目标点
geometry_msgs/Point point
