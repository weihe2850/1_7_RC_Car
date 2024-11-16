# 帧头，包含时间戳信息
std_msgs/Header header

# 模块类型
uint8 module_type

# error_code
uint32 error_code

# 总线IO模块数据有效性：IO模块默认关闭，需要程序启动连接否则数据无效(0)
bool io_validity

# 按钮: var > 0 表示激活 var = 0 表示未激活
uint8 button_stop
uint8 button_a
uint8 button_b
uint8 button_c