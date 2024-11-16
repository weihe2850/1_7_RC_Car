std_msgs/Header header

#方向盘打角   -50 ———— +50   左正右负   -720~720
float32 steer   

#油门       0 ———— +100  
# float32 throttle

# 刹车 0-100.0
float32 brake
bool if_brake

# 控速
float32 speed_control
bool if_speed

# 控加速度
float32 acceleration_control
bool if_acceleration

# 左车灯
bool is_left_lighting

# 右车灯
bool is_right_lighting

# 挂钩锁紧
bool is_hook_close

# 挂钩位置
float32 hook_position

# 档位
uint8 gear_info

# pmx - debug
float32 speed_limit
float32 speed_out