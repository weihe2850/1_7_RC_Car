import pandas as pd
from math import pi
import numpy as np
import matplotlib.pyplot as plt
# 定义列名
column_names = ['Ux', 'Uy', 'r', 'ax', 'ay', 'speed', 'delta', 'TxR','latitude', 'longitude', 'altitude', 'roll', 'pitch', 'yaw']
# 轮胎半径
radius = 0.054
# 轮胎周长
circumference = 2 * pi * radius
# 从rpm到m/s的转换系数
rpm_to_mps_coefficient = circumference /60
print("const:\n", rpm_to_mps_coefficient)
# 读取CSV文件，没有列名时skiprows不跳过任何行，header=None表示文件中没有列名行
data = pd.read_csv(r"C:\Users\69546\Desktop\硬件平台\Serial_py\test_garden.csv", names=column_names, header=None)
# 删除latitude为0的行
df = data[data['latitude'] != 0].reset_index(drop=True)
dt = 0.05
# 提取每一列
Ux = df['Ux']  # 横向速度，单位为米/秒
Uy = df['Uy']  # 纵向速度，单位为米/秒
r  = df['r']  # 角速度，单位为弧度/秒
ax = df['ax']  # 横向加速度，单位为米/秒^2
ay = df['ay']  # 纵向加速度，单位为米/秒^2
speed = df['speed']  # 速度，单位为米/秒
delta = df['delta']  # 转向角，单位为弧度
TxR   = df['TxR']  # 后轮扭矩，单位为牛顿
latitude  = df['latitude']  # 纬度，单位为度
longitude = df['longitude']  # 经度，单位为度
altitude  = df['altitude']  # 海拔，单位为米
roll = np.radians(df['roll'])  # 横滚角，单位为弧度
pitch = np.radians(df['pitch'])  # 俯仰角，单位为弧度
yaw = np.radians(df['yaw'])  # 航向角，单位为弧度
time = np.arange(len(Ux)) * dt
# 计算总速度V
# 计算车辆坐标系的 Ux 和 Uy
Ux_vehicle = Ux * np.cos(yaw) + Uy * np.sin(yaw)
Uy_vehicle = -Ux * np.sin(yaw) + Uy * np.cos(yaw)
V = np.sqrt(df['Ux']**2 + df['Uy']**2 )
V_tire = speed * rpm_to_mps_coefficient

legend_fontsize = 14
plt.figure(figsize=(10, 8))
plt.plot(time, Ux_vehicle, label='Ux_vehicle')
plt.plot(time, Uy_vehicle, label='Uy_vehicle')
plt.plot(time, V_tire, label='V_tire')
plt.xlabel('t (s)', fontsize=legend_fontsize)  # 增加横坐标字体大小
plt.ylabel('Velocity (m/s)', fontsize=legend_fontsize)  # 增加纵坐标字体大小
plt.legend(fontsize=legend_fontsize)  # 增加图例字体大小
plt.show()

# legend_fontsize = 14
# plt.figure(figsize=(10, 8))
# plt.plot(time, r, label='r')
# plt.plot(time, delta, label='delta')
# plt.xlabel('t (s)', fontsize=legend_fontsize)  # 增加横坐标字体大小
# plt.ylabel('r (rad)', fontsize=legend_fontsize)  # 增加纵坐标字体大小
# plt.legend(fontsize=legend_fontsize)  # 增加图例字体大小
# plt.show()

# 地球半径（单位：米）
EARTH_RADIUS = 6371000  


# 以第一个点为原点
origin_lat = np.radians(latitude[0])
origin_lon = np.radians(longitude[0])

# 将经纬度转换为米
dx = EARTH_RADIUS * np.cos(origin_lat) * np.radians(longitude - longitude[0])
dy = EARTH_RADIUS * np.radians(latitude - latitude[0])

plt.figure(figsize=(10, 8))
plt.scatter(dx, dy, label='xy')

# 在每隔100个点上标注航向
for i in range(0, len(dx), 20):
    plt.annotate(f'yaw(deg): {yaw[i]*180/pi:.2f}', (dx[i], dy[i]))
    

plt.xlabel('X (m)', fontsize=legend_fontsize)  # 设置横坐标为时间，单位为秒
plt.ylabel('Y (m)', fontsize=legend_fontsize)  # 设置纵坐标为速度，单位为米/秒

plt.legend()

plt.show()
#将图形保存为文件
plt.savefig('/home/inin/weihe_ws/figure/xy.png')



