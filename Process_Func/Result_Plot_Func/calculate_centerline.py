import pandas as pd
from math import pi
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.collections import LineCollection
from scipy.spatial import KDTree
import os
import sys

def load_config():
    sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    import Config
    return Config

def load_data(pparent_dir):
    data = pd.read_csv(os.path.join(pparent_dir, "Database/Test_Data.csv"))
    data1 = pd.read_csv(os.path.join(pparent_dir, "Database/Planning_v5.csv"))
    data2 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Inner.csv")) 
    data3 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Outer.csv"))
    return data, data1, data2, data3

def preprocess_data(data, data1, data2, data3):
    data.columns = data.columns.str.strip()
    data1.columns = data1.columns.str.strip()
    data2.columns = data2.columns.str.strip()
    data3.columns = data3.columns.str.strip()
    df = data[data['latitude'] != 0]
    return df, data1, data2, data3

def calculate_centerline(inner_boundary, outer_boundary):
    # 使用KDTree来找到最近的外边界点
    tree = KDTree(outer_boundary)
    distances, indices = tree.query(inner_boundary)

    # 计算中心线的路点
    centerline = (inner_boundary + outer_boundary[indices]) / 2.0
    return centerline

def main():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    parent_dir = os.path.dirname(current_dir)
    pparent_dir = os.path.dirname(parent_dir)
    Config = load_config()
    data, data1, data2, data3 = load_data(pparent_dir)
    df, data1, data2, data3 = preprocess_data(data, data1, data2, data3)
    x_ref, y_ref = data1['x_m'], data1['y_m']
    x2, y2 = data2['x_m'], data2['y_m']
    x3, y3 = data3['x_m'], data3['y_m']
    Ux_ref, r_ref = data1['Ux_mps'], data1['r_radps']
    Ux, Uy, r, yaw = df['Ux_mps'], df['Uy_mps'], df['r_radps'], df['yaw_rad']
    latitude, longitude = df['latitude'], df['longitude']
    time = np.arange(len(r)) * Config.dt

    # 计算中心线
    inner_boundary = np.vstack((x2, y2)).T
    outer_boundary = np.vstack((x3, y3)).T
    centerline = calculate_centerline(inner_boundary, outer_boundary)
    x_center, y_center = centerline[:, 0], centerline[:, 1]

    # 保存中心线到CSV文件
    centerline_df = pd.DataFrame({'x_m': x_center, 'y_m': y_center})
    centerline_df.to_csv(os.path.join(pparent_dir, 'Database/Centerline.csv'), index=False)

    # 绘制内边界、外边界和中心线
    plt.figure(figsize=(10, 8))
    plt.plot(x2, y2, 'b-', label='Inner Boundary')
    plt.plot(x3, y3, 'b-', label='Outer Boundary')
    plt.plot(x_ref, y_ref, 'g-', label='Reference Trajectory')
    plt.plot(x_center, y_center, 'r--', label='Centerline')
    plt.legend()
    plt.xlabel('X (m)')
    plt.ylabel('Y (m)')
    plt.title('Road Boundaries and Centerline')
    plt.axis('equal')
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    main()