import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
# 获取当前文件夹路径
current_dir = os.path.dirname(os.path.abspath(__file__))
# 获取上一级文件夹路径
parent_dir = os.path.dirname(current_dir)
# 获取上一级文件夹路径
pparent_dir = os.path.dirname(parent_dir)



df = pd.read_csv(os.path.join(pparent_dir, "Database/Planning_v2.csv"))

# 提取所需的列
df_extracted = df[['x_m', 'y_m', 'phi_rad', 'Ux_mps', 'Uy_mps','r_radps']].copy()

# 旋转角度
theta = 0.00
phi_error = 0
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
df_extracted.loc[:, 'phi_rad'] = df_extracted['phi_rad'] + phi_error
# 保存到新的 CSV 文件
df_extracted.to_csv(os.path.join(current_dir, 'New_csv.csv'), index=False)


# 绘制图像
plt.figure(figsize=(10, 8))
plt.scatter(df_extracted['x_m'], df_extracted['y_m'], label='Rotated Points', color='blue')

# 添加箭头表示 phi_rad 方向
for i in range(len(df_extracted)):
    x = df_extracted['x_m'].iloc[i]
    y = df_extracted['y_m'].iloc[i]
    phi = df_extracted['phi_rad'].iloc[i]
    dx = np.cos(phi)
    dy = np.sin(phi)
    plt.arrow(x, y, dx, dy, head_width=0.1, head_length=0.1, fc='red', ec='red')

plt.xlabel('X (m)')
plt.ylabel('Y (m)')
plt.title('Rotated Coordinates with Phi Direction')
plt.legend()
plt.axis('equal')
plt.show()