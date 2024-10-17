import pandas as pd
from math import pi
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
# 定义列名
# New origin (longitude, latitude): (116.30363609277023, 39.96311185708461)
column_names = ['Ux', 'Uy', 'r', 'ax', 'ay', 'speed', 'delta', 'TxR','latitude', 'longitude', 'altitude', 'roll', 'pitch', 'yaw']
# 轮胎半径
radius = 0.054
# 轮胎周长
circumference = 2 * pi * radius
# 从rpm到m/s的转换系数
rpm_to_mps_coefficient = circumference /60
print("const:\n", rpm_to_mps_coefficient)
# 读取CSV文件，没有列名时skiprows不跳过任何行，header=None表示文件中没有列名行
# data = pd.read_csv("/home/inin/weihe_ws/my.csv", names=column_names, header=None)
# data = pd.read_csv("/home/inin/weihe_ws/map_tiantai.csv", names=column_names, header=None)
# 读取第二个CSV文件
# data1 = pd.read_csv("/home/inin/weihe_ws/map_tiantai1.csv", names=column_names, header=None)
# data2 = pd.read_csv("/home/inin/weihe_ws/test.csv", names=column_names, header=None)
data2 = pd.read_csv("/home/inin/weihe_ws/Race_data/天台外圈_10_15.csv", names=column_names, header=None)
# data2 = pd.read_csv("/home/inin/weihe_ws/coordinates.csv")
# data = pd.read_csv("/home/inin/weihe_ws/天台外圈.csv", names=column_names, header=None)
# data1 = pd.read_csv("/home/inin/weihe_ws/天台内圈.csv", names=column_names, header=None)
data = pd.read_csv("/home/inin/weihe_ws/Race_data/天台外圈_10_15.csv", names=column_names, header=None)
data1 = pd.read_csv("/home/inin/weihe_ws/Race_data/天台内圈_10_15.csv", names=column_names, header=None)
# # data = pd.read_csv("/home/inin/weihe_ws/test.csv", names=column_names, header=None)
# data1 = pd.read_csv("/home/inin/weihe_ws/test.csv", names=column_names, header=None)
# 删除latitude为0的行
df = data[data['latitude'] != 0].reset_index(drop=True)
# 删除latitude为0的行
df1 = data1[data1['latitude'] != 0].reset_index(drop=True)
df2 = data2[data2['latitude'] != 0].reset_index(drop=True)
# 提取每一列
latitude1  = df1['latitude']  # 纬度，单位为度
longitude1 = df1['longitude']  # 经度，单位为度

# 提取每一列
latitude2  = df2['latitude']  # 纬度，单位为度
longitude2 = df2['longitude']  # 经度，单位为度
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
# 地球半径（单位：米）
EARTH_RADIUS = 6371000  
# 以第一个点为原点
latitude[0]= 39.96300548
longitude[0]=116.30368265
origin_lat = np.radians(latitude[0])
origin_lon = np.radians(longitude[0])
# # 将经纬度转换为米
dx = EARTH_RADIUS * np.cos(origin_lat) * np.radians(longitude - longitude[0])
dy = EARTH_RADIUS * np.radians(latitude - latitude[0])
# 将经纬度转换为米
dx1 = EARTH_RADIUS * np.cos(origin_lat) * np.radians(longitude1 - longitude[0])
dy1 = EARTH_RADIUS * np.radians(latitude1 - latitude[0])
dx2 = EARTH_RADIUS * np.cos(origin_lat) * np.radians(longitude2 - longitude[0])
dy2 = EARTH_RADIUS * np.radians(latitude2 - latitude[0])
# 将经纬度转换为米
# dx =  (longitude - longitude[0])*10000
# dy = (latitude - latitude[0])*10000
# # 将经纬度转换为米
# dx1 = (longitude1 - longitude[0])*10000
# dy1 = (latitude1 - latitude[0])*10000
# 计算旋转矩阵
yaw[0] = yaw[0] + pi-0.16
rotation_matrix = np.array([
    [np.cos(yaw[0]), -np.sin(yaw[0])],
    [np.sin(yaw[0]), np.cos(yaw[0])]
])
# 计算旋转矩阵
yaw1 = np.radians(df1['yaw'])  # 航向角，单位为弧度
rotation_matrix1 = np.array([
    [np.cos(yaw[0]), -np.sin(yaw[0])],
    [np.sin(yaw[0]), np.cos(yaw[0])]
])

# 将dx和dy转换为一个2D向量
d = np.array([dx, dy])
# 将dx和dy转换为一个2D向量
d1 = np.array([dx1, dy1])
# 将dx和dy转换为一个2D向量
d2 = np.array([dx2, dy2])
# 应用旋转矩阵
dx, dy= np.dot(rotation_matrix, d)
# 应用旋转矩阵
dx1, dy1 = np.dot(rotation_matrix1, d1)
dx2, dy2 = np.dot(rotation_matrix1, d2)

# 在同一张图上绘制两个轨迹
plt.figure(figsize=(10, 8))
plt.scatter(dx, dy, label='xy', s=10, color='black')  # 设置点的颜色为红色
plt.scatter(dx1, dy1, label='xy1', s=10, color='black')  # 设置点的颜色为绿色
plt.scatter(dx2, dy2, label='xy1', s=10, color='blue')  # 设置点的颜色为蓝色
plt.axis('equal')
# plt.scatter(longitude,latitude , label='xy', s=10, color='black')  # 设置点的颜色为红色
# plt.scatter(longitude1,latitude1 , label='xy1', s=10, color='black')  # 设置点的颜色为绿色
# plt.scatter(longitude2,latitude2 , label='xy1', s=10, color='blue')  # 设置点的颜色为蓝色

plt.xlabel('X (m)', fontsize=legend_fontsize)  # 设置横坐标为时间，单位为秒
plt.ylabel('Y (m)', fontsize=legend_fontsize)  # 设置纵坐标为速度，单位为米/秒
plt.legend()
#将图形保存为文件
plt.savefig('/home/inin/weihe_ws/xy.png')
plt.show()

# 将新的轨迹点保存为CSV文件
df = pd.DataFrame({'x_m': dx, 'y_m': dy})
df1 = pd.DataFrame({'x_m': dx1, 'y_m': dy1})
df.to_csv('/home/inin/weihe_ws/test.csv', index=False)
df1.to_csv('/home/inin/weihe_ws/test1.csv', index=False)

# # 创建一个新的figure和axes
# fig, ax = plt.subplots()

# # 初始化函数：绘图区域的设置
# def init():
#     ax.set_xlim(min(dx), max(dx))  # x轴的范围
#     ax.set_ylim(min(dy), max(dy))  # y轴的范围
#     return ln,

# # 更新函数：每一帧的内容
# def update(frame):
#     # 添加新的数据点
#     ln.set_data(dx[:frame], dy[:frame])
#     return ln,

# # 创建一个空的线对象
# ln, = plt.plot([], [], 'ro')

# # 创建动画
# ani = animation.FuncAnimation(fig, update, frames=range(len(dx)), init_func=init, blit=True, interval=50)

# plt.show()

