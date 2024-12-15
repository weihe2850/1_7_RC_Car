import pandas as pd
from math import pi
import numpy as np
from scipy.optimize import curve_fit
from scipy.optimize import least_squares
from scipy.optimize import minimize
from scipy.signal import butter, filtfilt
import matplotlib.pyplot as plt
import os

radius = 0.054
m = 8  # 质量
a = 0.2
b = 0.22 
w = 0.3 
# 计算转动惯量 Iz
Iz = 0.1
# # 轮胎周长
circumference = 2 * pi * radius
# 从rpm到m/s的转换系数
rpm_to_mps_coefficient = circumference / 60



# m = 1416  # 质量
# a = 1.015
# b = 1.895 
# # 计算转动惯量 Iz
# Iz = 1536

# 获取当前文件夹路径
current_dir = os.path.dirname(os.path.abspath(__file__))
# 获取上一级文件夹路径
parent_dir = os.path.dirname(current_dir)
# 获取上一级文件夹路径
pparent_dir = os.path.dirname(parent_dir)
data = pd.read_csv(os.path.join(pparent_dir, "Database/Tireparams_Data.csv"))

# 删除latitude为0的行
df = data
# 删除70000行之后的数据
dt = 0.02
epsilon = 1e-8

# 提取每一列
Ux_mps = df['Ux_mps']  # 纵向速度，单位为米/秒
Uy_mps = df['Uy_mps']  # 横向速度，单位为米/秒
r_radps = df['r_radps']  # 横摆角速度，单位为弧度/秒
ax_mps2 = df['ax_mps2']  # 纵向加速度，单位为米/秒^2
ay_mps2 = df['ay_mps2']  # 横向加速度，单位为米/秒^2
delta_rad = df['delta_rad']  # 转向角，单位为弧度

time = np.arange(len(Ux_mps)) * dt
V = np.sqrt(Ux_mps**2 + Uy_mps**2)

beta_F = np.arctan((Uy_mps + a * r_radps) / (Ux_mps + epsilon)) - delta_rad
beta_R = np.arctan((Uy_mps - b * r_radps) / (Ux_mps + epsilon))

ay_mps2 = V * r_radps

# 计算估计的横向力
def estimate_lateral_forces(Ux_mps, Uy_mps, r_radps, delta_rad, time):
    beta_vehicle = np.arctan(Uy_mps / (Ux_mps + epsilon))
    dot_beta_actual = np.gradient(beta_vehicle, time)
    dot_r_actual = np.gradient(r_radps, time) 
    # print(f"拟合结果: dot_r_actual = {dot_r_actual}")
    # 使用简单的线性模型估计横向力
    FyF_estimated = (Iz * dot_r_actual + b * m * ay_mps2) / ((a+b) * np.cos(delta_rad))
    FyR_estimated = m * ay_mps2 - FyF_estimated * np.cos(delta_rad)
    
    return FyF_estimated/2, FyR_estimated/2

FyF_estimated, FyR_estimated = estimate_lateral_forces(Ux_mps, Uy_mps, r_radps, delta_rad, time)

# 去除异常数据
alpha_cr = 1.5
mask = (np.abs(beta_F) <= alpha_cr) & (np.abs(beta_R) <= alpha_cr) & (np.abs(FyF_estimated) > 0.4) & (np.sign(beta_F) != np.sign(FyF_estimated))
Ux_mps = Ux_mps[mask]
Uy_mps = Uy_mps[mask]
r_radps = r_radps[mask]
ax_mps2 = ax_mps2[mask]
ay_mps2 = ay_mps2[mask]
delta_rad = delta_rad[mask]
time = time[mask]
beta_F = beta_F[mask]
beta_R = beta_R[mask]
FyF_estimated = FyF_estimated[mask]
FyR_estimated = FyR_estimated[mask]
# 定义模型函数
def model(params, beta):
    C, B = params
    Fy = -0.5 * 8 * 9.8 /4 * np.sin(C * np.arctan(B * beta))
    return Fy

# 定义目标函数
def objective(params, beta, Fy_ref):
    Fy = model(params, beta)
    residuals = Fy_ref - Fy
    return np.sum(residuals**2)

# 设置参数的初始值和边界条件
initial_params = [1.0, 5.0]
bounds = [ (0, 20), (0, 20)]

# 使用 minimize 拟合模型参数 D, C 和 B
result = minimize(objective, initial_params, args=(beta_F, FyF_estimated), bounds=bounds)
C, B = result.x

print(f"拟合结果: C = {C}, B = {B}")

# # 绘制状态量曲线和控制量曲线
# plt.figure(figsize=(12, 6))
# plt.subplot(2, 1, 1)
# # plt.plot(time, Ux_mps, label='Ux_mps')
# # plt.plot(time, Uy_mps, label='Uy_mps')
# # plt.plot(time, r_radps, label='r_radps')
# # plt.plot(time, ay_mps2, label='ay_mps2')
# # plt.plot(time, beta_F, label='r_radps')
# # plt.plot(time,  FyF_estimated, label='r_radps')
# plt.plot(beta_F, FyF_estimated, label='FyF_estimated')
# # plt.plot(beta_F, FyF_model, label='FyF_model')

# plt.xlabel('beta_F ')
# plt.ylabel('Fy ')
# plt.xlim(-0.8, 0.8)
# plt.legend()

# plt.subplot(2, 1, 2)
# # plt.plot(time, delta_rad, label='delta_rad')
# # plt.plot(time, beta_F, label='r_radps')
# # plt.plot(time, ay_mps2, label='ay_mps2')
# # plt.plot(time, FyF_estimated, label='r_radps')
# # plt.plot(time, -FxR_N, label='FxR_N')
# plt.plot(beta_R, FyR_estimated, label='FyR_N')
# # plt.plot(FyR_estimated, FyR_N, label='FxF_N')
# # plt.plot(time, FyR_estimated, label='FyR_estimated')

# plt.xlabel('beta')
# plt.ylabel('Fy')
# plt.xlim(-0.8, 0.8)
# plt.legend()

# plt.tight_layout()
# plt.show()

# 绘制状态量曲线和控制量曲线
plt.figure(figsize=(12, 6))
plt.subplot(2, 1, 1)
plt.scatter(beta_F, FyF_estimated, label='FyF_estimated', s=10)
plt.scatter(beta_F, model([C, B], beta_F), label='FyF_model', linestyle='--')
plt.xlabel('beta_F')
plt.ylabel('Fy')
plt.xlim(-0.8, 0.8)
plt.legend()

plt.subplot(2, 1, 2)
plt.scatter(beta_R, FyR_estimated, label='FyR_estimated', s=10)
plt.scatter(beta_R, model([C, B], beta_R), label='FyR_model', linestyle='--')
plt.xlabel('beta_R')
plt.ylabel('Fy')
plt.xlim(-0.8, 0.8)
plt.legend()

plt.tight_layout()
plt.show()