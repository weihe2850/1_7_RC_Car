import pandas as pd
from math import pi
import numpy as np
from scipy.optimize import curve_fit
from scipy.optimize import least_squares
import matplotlib.pyplot as plt
from scipy.signal import butter, filtfilt
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
data = pd.read_csv(r"C:\Users\ASUS\Desktop\RaceTrack\直线往返2.csv", names=column_names, header=None)
# 删除latitude为0的行
df = data[data['latitude'] != 0].reset_index(drop=True)
dt = 0.05
#去除50秒之后的数据
df = df[df.index < 50 / dt]
# 提取每一列
Ux = df['Ux']  # 横向速度，单位为米/秒
Uy = df['Uy']  # 纵向速度，单位为米/秒
r  = df['r']  # 角速度，单位为弧度/秒
ax = df['ax']  # 横向加速度，单位为米/秒^2
ay = df['ay']  # 纵向加速度，单位为米/秒^2
speed = df['speed']  # 速度，单位为米/秒
delta = df['delta']  # 转向角，单位为弧度
TxR   = df['TxR']/2   # 后轮扭矩，单位为牛顿
latitude  = df['latitude']  # 纬度，单位为度
longitude = df['longitude']  # 经度，单位为度
altitude  = df['altitude']  # 海拔，单位为米
roll = np.radians(df['roll'])  # 横滚角，单位为弧度
pitch = np.radians(df['pitch'])  # 俯仰角，单位为弧度
yaw = np.radians(df['yaw'])  # 航向角，单位为弧度
time = np.arange(len(Ux)) * dt
yaw[0] = yaw[0] -0.15
# 计算总速度V
# 计算车辆坐标系的 Ux 和 Uy
Ux_vehicle = Ux * np.cos(yaw) + Uy * np.sin(yaw)
Uy_vehicle = -Ux * np.sin(yaw) + Uy * np.cos(yaw)
V = np.sqrt(df['Ux']**2 + df['Uy']**2 )
V_tire = speed * rpm_to_mps_coefficient


# 计算 Ux_vehicle 的时间导数 dot_Ux
dot_Ux = np.gradient(V_tire , time)

# 定义低通滤波器
def low_pass_filter(data, cutoff, fs, order=5):
    nyquist = 0.5 * fs
    normal_cutoff = cutoff / nyquist
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    y = filtfilt(b, a, data)
    return y

# # # 应用低通滤波器
# cutoff_frequency = 1  # 截止频率，单位为 Hz
# sampling_rate = 1 / dt  # 采样率，单位为 Hz
# V_tire  = low_pass_filter(V_tire , cutoff_frequency, sampling_rate)
# # 计算 Ux_vehicle 的时间导数 dot_Ux
dot_V_tire  = np.gradient(V_tire , time)

# 定义模型函数
def model(V_tire , TxR, k1, k2, k3):
    return k1*V_tire**2 +k2 * TxR + k3* np.sign(V_tire )

# 定义残差函数
def residuals(params,V_tire , TxR, dot_V_tire ):
    k1, k2, k3 = params
    return model(V_tire , TxR, k1, k2, k3) - dot_V_tire 

# 设置参数的初始值和边界条件
initial_params = [0.5, 2.0, -1.0]
bounds = ([0, 0, -np.inf], [np.inf, np.inf, 0])

# 使用 least_squares 拟合模型参数 k1, k2 和 k3
result = least_squares(residuals, initial_params, bounds=bounds, args=(V_tire , TxR, dot_V_tire ))
k1, k2, k3 = result.x

print(f"拟合结果: k1 = {k1}, k2 = {k2}, k3 = {k3}")
# 绘制拟合结果
plt.figure(figsize=(10, 8))
# plt.plot(time, Ux_vehicle, label='Ux_vehicle')
# plt.plot(time, Uy_vehicle, label='Ux_vehicle')
plt.plot(time, V_tire, label='V_tire')
plt.plot(time, TxR, label='TxR')
plt.plot(time, dot_V_tire , label='dot_V_tire  ')
plt.plot(time, model(V_tire , TxR, k1, k2, k3), label='dot_V_tire  ', linestyle='--')
plt.xlabel('t (s)', fontsize=12)  # 增加横坐标字体大小
plt.ylabel('Velocity (m/s)', fontsize=12)  # 增加纵坐标字体大小
plt.legend(fontsize=12)  # 增加图例字体大小
plt.show()

