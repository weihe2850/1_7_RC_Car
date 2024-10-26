import pandas as pd
from math import pi
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib.collections import LineCollection
from latlon_to_xy import latlon_to_xy
import os
import sys
# 获取当前文件夹路径
current_dir = os.path.dirname(os.path.abspath(__file__))
# 获取上一级文件夹路径
parent_dir = os.path.dirname(current_dir)
# 获取上一级文件夹路径
pparent_dir = os.path.dirname(parent_dir)
sys.path.append(parent_dir)
import Config
radius = Config.radius
circumference = Config.circumference
rpm_to_mps_coefficient = Config.rpm_to_mps_coefficient
legend_fontsize = Config.legend_fontsize
dt = Config.dt

# 使用相对路径读取CSV文件
data = pd.read_csv(os.path.join(pparent_dir, "Database/Test_Data.csv"))
data1 = pd.read_csv(os.path.join(pparent_dir, "Database/Planning_v1.csv"))
data2 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Inner.csv")) 
data3 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Outer.csv"))
# 删除latitude为0的行
# 去除列名中的空格
data.columns = data.columns.str.strip()
data1.columns = data1.columns.str.strip()
data2.columns = data2.columns.str.strip()
data3.columns = data3.columns.str.strip()
x_ref = data1['x_m']
y_ref = data1['y_m']
x2 = data2['x_m']
y2 = data2['y_m']
x3 = data3['x_m']
y3 = data3['y_m']
Ux_ref = data1['Ux_mps']
Uy_ref = data1['Uy_mps']
r_ref = data1['r_radps']

df = data[data['latitude'] != 0]
Ux= df['Ux_mps']  # 横向速度，单位为米/秒
Uy = df['Uy_mps']  # 纵向速度，单位为米/秒
r  = df['r_radps']  # 角速度，单位为弧度/秒
yaw = df['yaw_rad']  # 航向角，单位为弧度
latitude  = df['latitude']  # 纬度，单位为度
longitude = df['longitude']  # 经度，单位为度
time = np.arange(len(r)) * dt

# # 将经纬度转换为米
x,y = latlon_to_xy(latitude, longitude)
# # 计算车辆坐标系的 Ux 和 Uy

# 创建颜色映射，调整 vmin 和 vmax 以增强对比度，并反转颜色映射
norm = plt.Normalize(vmin=Ux_ref.min(), vmax=Ux_ref.max())
cmap = plt.get_cmap('inferno').reversed()  # 使用反转的 'inferno' colormap

# 创建线段集合
points = np.array([x, y]).T.reshape(-1, 1, 2)
segments = np.concatenate([points[:-1], points[1:]], axis=1)
lc = LineCollection(segments, cmap=cmap, norm=norm)
lc.set_array(Ux)
lc.set_linewidth(4)  # 增加线段宽度

# 创建线段集合
points_ref = np.array([x_ref, y_ref]).T.reshape(-1, 1, 2)
segments_ref = np.concatenate([points_ref[:-1], points_ref[1:]], axis=1)
lc_ref = LineCollection(segments_ref, cmap=cmap, norm=norm)
lc_ref.set_array(Ux_ref)
lc_ref.set_linewidth(4)  # 增加线段宽度
# 在同一张图上绘制两个轨迹
plt.figure(figsize=(10, 8))
plt.scatter(x2, y2, label='Boundary', s=10, color='black')  # 设置点的颜色为黑色
plt.scatter(x3, y3 , s=10, color='black')  # 设置点的颜色为黑色

plt.gca().add_collection(lc)  # 添加线段集合到图中
plt.plot(x_ref, y_ref, label='ref', linestyle='--', color='red')  # 设置线条为虚线，颜色为红色
# plt.gca().add_collection(lc_ref)  # 添加线段集合到图中
cbar = plt.colorbar(lc, label='Ux (m/s)', shrink=0.8)  # 设置颜色条大小
cbar.ax.tick_params(labelsize=Config.legend_fontsize)  # 增大颜色条刻度字体大小
cbar.set_label('Ux (m/s)', fontsize=Config.legend_fontsize)  # 设置颜色条标签字体大小
plt.axis('equal')
plt.xlabel('X (m)', fontsize=legend_fontsize)  # 设置横坐标为X，单位为米
plt.ylabel('Y (m)', fontsize=legend_fontsize)  # 设置纵坐标为Y，单位为米

# 增大坐标轴数字的字体大小
plt.tick_params(axis='both', which='major', labelsize=Config.legend_fontsize)

# 添加网格细分
plt.grid(True, which='both', linestyle='--', linewidth=0.5)

# 设置图例字体大小
plt.legend(fontsize=Config.legend_fontsize)
plt.show()

# 计算每个 data 点到 data3 点的距离，并找到最近的点
def find_nearest_reference(dx, dy, dx3, dy3, Ux_ref, r_ref):
    reference_speeds = []
    reference_angular_speeds = []
    for x, y in zip(dx, dy):
        distances = np.sqrt((dx3 - x)**2 + (dy3 - y)**2)
        nearest_index = np.argmin(distances)
        reference_speeds.append(Ux_ref[nearest_index])
        reference_angular_speeds.append(r_ref[nearest_index])
    return np.array(reference_speeds), np.array(reference_angular_speeds)

reference_speeds, reference_angular_speeds = find_nearest_reference(x, y, x_ref, y_ref, Ux_ref, r_ref)

# 绘制对比曲线
plt.figure(figsize=(12, 6))

# 速度对比
plt.subplot(2, 1, 1)
plt.plot(time,reference_speeds, label='Reference Speed', linestyle='--', color='red')
plt.plot(time,Ux, label='Data Speed', color='blue')
plt.xlabel('Index')
plt.ylabel('Speed (m/s)')
plt.legend()
plt.title('Speed Comparison')

# 角速度对比
plt.subplot(2, 1, 2)
plt.plot(time,reference_angular_speeds, label='Reference Angular Speed', linestyle='--', color='red')
plt.plot(time,r, label='Data Angular Speed', color='blue')
plt.xlabel('Index')
plt.ylabel('Angular Speed (rad/s)')
plt.legend()
plt.title('Angular Speed Comparison')

plt.tight_layout()
plt.show()