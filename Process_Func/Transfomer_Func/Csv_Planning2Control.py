import pandas as pd
import numpy as np
import os

# 获取当前脚本的路径
current_dir = os.path.dirname(os.path.abspath(__file__))
# 获取上一级文件夹路径
parent_dir = os.path.dirname(current_dir)
# 获取上一级文件夹路径
pparent_dir = os.path.dirname(parent_dir)

# 读取CSV文件
df = pd.read_csv(os.path.join(pparent_dir, "Database/西天台优化轨迹5.csv"))
# 去除列名中的空格
df.columns = df.columns.str.strip()

# 重命名列名
df.rename(columns={'vx_mps': 'Ux_mps', 'psi_rad': 'phi_rad'}, inplace=True)

# 提取所需的列
df_extracted = df[['x_m', 'y_m', 'phi_rad', 'Ux_mps']].copy()
# 添加 vy_mps 列，值为 0
df_extracted['Uy_mps'] = 0
# 计算 r_radps 列
df_extracted['r_radps'] = df_extracted['Ux_mps'] * df['kappa_radpm']
# 旋转角度
# theta = np.pi + 0.01
theta = 0
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
df_extracted.loc[:, 'phi_rad'] = df_extracted['phi_rad'] + 1.58
# 保存到新的 CSV 文件
df_extracted.to_csv(os.path.join(pparent_dir, 'Database/Planning_v5.csv'), index=False)