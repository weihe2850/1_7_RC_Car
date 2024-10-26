import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os

# 读取 CSV 文件
current_path = os.path.dirname(os.path.abspath(__file__))
inner_df = pd.read_csv(os.path.join(current_path, 'RaceTrack_Inner.csv'))
outer_df = pd.read_csv(os.path.join(current_path, 'RaceTrack_Outer.csv'))
Ref_df = pd.read_csv(os.path.join(current_path, 'RaceTrack_Ref1.csv'))

# 提取 'x_m' 和 'y_m' 列数据
inner_x = inner_df['x_m'].values
inner_y = inner_df['y_m'].values
outer_x = outer_df['x_m'].values
outer_y = outer_df['y_m'].values
ref_x = Ref_df['x_m'].values
ref_y = Ref_df['y_m'].values
ref_psi= Ref_df['psi_rad'].values
# 旋转角度
theta = 0 
# 旋转矩阵
rotation_matrix = np.array([
    [np.cos(theta), -np.sin(theta)],
    [np.sin(theta), np.cos(theta)]
])
# 旋转数据
inner_rotated = np.dot(rotation_matrix, np.vstack((inner_x, inner_y)))
outer_rotated = np.dot(rotation_matrix, np.vstack((outer_x, outer_y)))
ref_rotated = np.dot(rotation_matrix, np.vstack((ref_x, ref_y)))

# 创建旋转后的 DataFrame
inner_rotated_df = pd.DataFrame({'x_m': inner_rotated[0, :], 'y_m': inner_rotated[1, :]})
outer_rotated_df = pd.DataFrame({'x_m': outer_rotated[0, :], 'y_m': outer_rotated[1, :]})
ref_rotated_df = pd.DataFrame({'x_m': ref_rotated[0, :], 'y_m': ref_rotated[1, :]})

# 保存旋转后的数据到新的 CSV 文件
inner_rotated_df.to_csv(os.path.join(current_path, 'inner_rotated.csv'), index=False)
outer_rotated_df.to_csv(os.path.join(current_path, 'outer_rotated.csv'), index=False)
ref_rotated_df.to_csv(os.path.join(current_path, 'ref_rotated.csv'), index=False)

# 绘制图形
plt.figure(figsize=(10, 8))
plt.scatter(ref_rotated_df['x_m'], ref_rotated_df['y_m'], label='Ref Rotated', s=10, c='blue')

# 用箭头标注 'psi_rad' 数据
scale = 0.1  # 箭头的缩放比例
plt.quiver(ref_rotated_df['x_m'], ref_rotated_df['y_m'], 
           np.cos(ref_psi) * scale, np.sin(ref_psi) * scale, 
           angles='xy', scale_units='xy', scale=1, color='purple', label='Yaw')
plt.axis('equal')
plt.xlabel('X')
plt.ylabel('Y')
plt.legend()
plt.title('Original and Rotated Data')
plt.grid(True)
plt.show()

# tangent_angles = np.arctan2(np.diff(ref_y), np.diff(ref_x))
# angle_diffs = tangent_angles - ref_psi[:-1]
# for i, diff in enumerate(angle_diffs):
#     print(f"Point {i}: Tangent Angle = {tangent_angles[i]}, Psi_rad = {ref_psi[i]}, Difference = {diff}")
