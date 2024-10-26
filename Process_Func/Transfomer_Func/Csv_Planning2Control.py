import pandas as pd
import numpy as np
import os

# 获取当前脚本的路径
current_path = os.path.dirname(os.path.realpath(__file__))
# 读取 CSV 文件，并指定第一行作为列名
df = pd.read_csv(os.path.join(current_path, '西天台优化轨迹3.csv'), header=0)
# 提取所需的列
df_extracted = df[['x_m', 'y_m', 'psi_rad', 'vx_mps']].copy()
# 添加 vy_mps 列，值为 0
df_extracted['Uy_mps'] = 0
# 计算 r_radps 列
df_extracted['r_radps'] = df_extracted['vx_mps'] * df['kappa_radpm']
# 旋转角度
theta =np.pi-0.01
# 旋转矩阵
rotation_matrix = np.array([
    [np.cos(theta), -np.sin(theta)],
    [np.sin(theta), np.cos(theta)]
])
# 提取 x_m 和 y_m 列数据
x_m = df_extracted['x_m'].values
y_m = df_extracted['y_m'].values
# 旋转 x_m 和 y_m
rotated_coords = np.dot(rotation_matrix, np.vstack((x_m, y_m)))
df_extracted.loc[:, 'x_m'] = rotated_coords[0, :]
df_extracted.loc[:, 'y_m'] = rotated_coords[1, :]
df_extracted.loc[:, 'psi_rad'] = df_extracted['psi_rad'] - 1.58
# 保存到新的 CSV 文件
df_extracted.to_csv(os.path.join(current_path, 'RaceTrack_Ref1.csv'), index=False)

