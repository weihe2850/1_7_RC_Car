import pandas as pd
from math import pi
import numpy as np
from scipy.optimize import curve_fit
from scipy.optimize import least_squares
from scipy.optimize import minimize
from scipy.signal import butter, filtfilt
import matplotlib.pyplot as plt
# 定义列名
column_names = ['Ux', 'Uy', 'r', 'ax', 'ay', 'speed', 'delta', 'TxR','latitude', 'longitude', 'altitude', 'roll', 'pitch', 'yaw']
# 轮胎半径
radius = 0.054
m = 8 # 质量
a = 0.2
b = 0.22 
w = 0.3 
# 计算转动惯量 Iz
Iz = 0.1
# 轮胎周长
circumference = 2 * pi * radius
# 从rpm到m/s的转换系数
rpm_to_mps_coefficient = circumference /60
# 读取CSV文件，没有列名时skiprows不跳过任何行，header=None表示文件中没有列名行
data = pd.read_csv(r"C:\Users\ASUS\Desktop\RaceTrack\绕圈1.csv", names=column_names, header=None)
# 删除latitude为0的行
df = data[data['latitude'] != 0].reset_index(drop=True)
dt = 0.05
epsilon = 1e-8
# 提取每一列
Ux = df['Ux']  # 横向速度，单位为米/秒
Uy = df['Uy']  # 纵向速度，单位为米/秒
r  = df['r']  # 角速度，单位为弧度/秒

# # 设计低通滤波器
# def lowpass_filter(data, cutoff, fs, order=5):
#     nyquist = 0.5 * fs
#     normal_cutoff = cutoff / nyquist
#     b, a = butter(order, normal_cutoff, btype='low', analog=False)
#     y = filtfilt(b, a, data)
#     return y

# # 应用低通滤波器
# cutoff_frequency = 0.1  # 截止频率，可以根据需要调整
# sampling_rate = 1 / dt  # 采样率
# r = lowpass_filter(r, cutoff_frequency, sampling_rate)
# Ux= lowpass_filter(Ux, cutoff_frequency, sampling_rate)
# Uy= lowpass_filter(Uy, cutoff_frequency, sampling_rate)


ax = df['ax']  # 横向加速度，单位为米/秒^2
ay = df['ay']  # 纵向加速度，单位为米/秒^2
speed = df['speed']  # 速度，单位为米/秒
delta = df['delta']  # 转向角，单位为弧度
TxR   = df['TxR'] / 2  # 后轮扭矩，单位为牛顿
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

# 定义模型函数
def model(params, Ux_vehicle, Uy_vehicle, r, delta, TxR, time):
    D, C, B = params
    FxR = TxR / radius 
    beta_vehicle = np.arctan(Uy_vehicle / (Ux_vehicle + epsilon))
    dot_beta_actual = np.gradient(beta_vehicle, time)
    dot_r_actual = np.gradient(r, time)
    
    beta_F = np.arctan((Uy_vehicle + a * r) / (Ux_vehicle + epsilon)) - delta
    FyF = -D * np.sin(C * np.arctan(B * beta_F))
    
    beta_R = np.arctan((Uy_vehicle - b * r) / (Ux_vehicle + epsilon))
    beta_cr = np.tan(np.arcsin(np.sqrt(D**2 - FxR**2) / D) / C) / B
    
    FyR = np.where(beta_R < beta_cr, -D * np.sin(C * np.arctan(B * beta_R)), np.sqrt(D**2 - FxR**2))
    
    dot_beta_model = (FyF * a - FyR * b) / (m * Ux_vehicle) - r
    dot_r_model = (FyF * a - FyR * b) / Iz
    
    return dot_beta_model, dot_r_model, dot_beta_actual, dot_r_actual

# 定义目标函数
def objective(params, Ux_vehicle, Uy_vehicle, r, delta, TxR, time):
    dot_beta_model, dot_r_model, dot_beta_actual, dot_r_actual = model(params, Ux_vehicle, Uy_vehicle, r, delta, TxR, time)
    residuals_beta = dot_beta_model - dot_beta_actual
    residuals_r = dot_r_model - dot_r_actual
    return np.sum(residuals_beta**2 + residuals_r**2)

# 设置参数的初始值和边界条件
initial_params = [20, 1.0, 2.0]
bounds = [(0, 40), (0, None), (0, None)]

# 使用 minimize 拟合模型参数 D, C 和 B
result = minimize(objective, initial_params, args=(Ux_vehicle, Uy_vehicle, r, delta, TxR, time), bounds=bounds)
D, C, B = result.x

print(f"拟合结果: D = {D}, C = {C}, B = {B}")

# # 绘制拟合结果
# dot_beta_model, dot_r_model, dot_beta_actual, dot_r_actual = model([D, C, B], Ux_vehicle, Uy_vehicle, r, delta, TxR, time)

# plt.figure(figsize=(12, 6))
# plt.subplot(2, 1, 1)
# plt.plot(time, dot_beta_actual, label='dot_beta (actual)')
# plt.plot(time, dot_beta_model, label='dot_beta (predict)', linestyle='--')
# plt.xlabel('time (s)')
# plt.ylabel('dot_beta')
# plt.legend()

# plt.subplot(2, 1, 2)
# plt.plot(time, dot_r_actual, label='dot_r (actual)')
# plt.plot(time, dot_r_model, label='dot_r (predict)', linestyle='--')
# plt.xlabel('time (s)')
# plt.ylabel('dot_r')
# plt.legend()

# plt.tight_layout()
# plt.show()

#绘制状态量曲线和控制量曲线
plt.figure(figsize=(12, 6))
plt.subplot(2, 1, 1)
plt.plot(time, Ux_vehicle, label='Ux_vehicle')
plt.plot(time, Uy_vehicle, label='Uy_vehicle')
plt.plot(time, r, label='r')
plt.xlabel('time (s)')
plt.ylabel('Velocity (m/s)')
plt.legend()

plt.subplot(2, 1, 2)
plt.plot(time, delta, label='delta')
plt.plot(time, TxR, label='TxR')
plt.xlabel('time (s)')
plt.ylabel('Control')
plt.legend()

plt.tight_layout()
plt.show()