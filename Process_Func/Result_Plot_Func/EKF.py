import pandas as pd
from math import pi
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.collections import LineCollection
from latlon_to_xy import latlon_to_xy
import os
import sys

def load_config():
    sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
    import Config
    return Config

def load_data(pparent_dir):
    data = pd.read_csv(os.path.join(pparent_dir, "Database/UWB_test.csv"))
    data1 = pd.read_csv(os.path.join(pparent_dir, "Database/UWB_test_planning.csv"))
    data2 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Inner.csv")) 
    data3 = pd.read_csv(os.path.join(pparent_dir, "Database/Boundary_Inner.csv"))
    return data, data1, data2, data3

def preprocess_data(data, data1, data2, data3):
    data.columns = data.columns.str.strip()
    data1.columns = data1.columns.str.strip()
    data2.columns = data2.columns.str.strip()
    data3.columns = data3.columns.str.strip()
    df = data[data['latitude'] != 0]
    return df, data1, data2, data3


def plot_trajectory(x, y, x_ref, y_ref, x2, y2, x3, y3, Ux, Ux_ref, Config):
    norm = plt.Normalize(vmin=min(Ux.min(), Ux_ref.min()), vmax=max(Ux.max(), Ux_ref.max()))
    cmap = plt.get_cmap('inferno').reversed()

    # 绘制实际轨迹
    points = np.array([x, y]).T.reshape(-1, 1, 2)
    segments = np.concatenate([points[:-1], points[1:]], axis=1)
    lc = LineCollection(segments, cmap=cmap, norm=norm)
    lc.set_array(Ux)
    lc.set_linewidth(4)

    # 绘制参考轨迹
    points_ref = np.array([x_ref, y_ref]).T.reshape(-1, 1, 2)
    segments_ref = np.concatenate([points_ref[:-1], points_ref[1:]], axis=1)
    lc_ref = LineCollection(segments_ref, cmap=cmap, norm=norm)
    lc_ref.set_array(Ux_ref)
    lc_ref.set_linewidth(2)

    plt.figure(figsize=(10, 8))
    plt.scatter(x2, y2, label='Boundary', s=10, color='black')
    plt.scatter(x3, y3, s=10, color='black')
    plt.gca().add_collection(lc)
    plt.gca().add_collection(lc_ref)
    cbar = plt.colorbar(lc, label='Ux (m/s)', shrink=0.8)
    cbar.ax.tick_params(labelsize=Config.legend_fontsize)
    cbar.set_label('Ux (m/s)', fontsize=Config.legend_fontsize)
    plt.axis('equal')
    plt.xlabel('X (m)', fontsize=Config.legend_fontsize)
    plt.ylabel('Y (m)', fontsize=Config.legend_fontsize)
    plt.tick_params(axis='both', which='major', labelsize=Config.legend_fontsize)
    plt.grid(True, which='both', linestyle='--', linewidth=0.5)
    plt.legend(fontsize=Config.legend_fontsize)
    plt.show()

def find_nearest_reference(dx, dy, dx3, dy3, Ux_ref, r_ref):
    reference_speeds = []
    reference_angular_speeds = []
    for x, y in zip(dx, dy):
        distances = np.sqrt((dx3 - x)**2 + (dy3 - y)**2)
        nearest_index = np.argmin(distances)
        reference_speeds.append(Ux_ref[nearest_index])
        reference_angular_speeds.append(r_ref[nearest_index])
    return np.array(reference_speeds), np.array(reference_angular_speeds)

def plot_comparison(time, x_ref, x, y_ref, y, Ux_ref, Ux):
    # plt.figure(figsize=(12, 6))
    font_size = 14  # 设置字体大小

    # plt.subplot(2, 1, 1)
    # # plt.plot(time, x_ref, label='UWB_x', linestyle='--', color='red')
    # plt.plot(time, x, label='EKF_x', color='blue')
    # plt.xlabel('Index', fontsize=font_size)
    # plt.ylabel('x (m)', fontsize=font_size)
    # plt.legend(fontsize=font_size)
    # plt.title('x Comparison', fontsize=font_size)

    # plt.subplot(2, 1, 2)
    # # plt.plot(time, y_ref, label='UWB_y', linestyle='--', color='red')
    # plt.plot(time, y, label='EKF_y', color='blue')
    # plt.xlabel('Index', fontsize=font_size)
    # plt.ylabel('y (m)', fontsize=font_size)
    # plt.legend(fontsize=font_size)
    # plt.title('y Comparison', fontsize=font_size)

    # plt.tight_layout()
    # plt.show()

    plt.figure(figsize=(12, 6))

    plt.plot(x, y, label='EKF_Path', linestyle='--', color='blue')
    plt.xlabel('x', fontsize=font_size)
    plt.ylabel('y', fontsize=font_size)
    plt.legend(fontsize=font_size)

    plt.plot(x_ref, y_ref, label='ref_Path', linestyle='--', color='red')
    plt.xlabel('x', fontsize=font_size)
    plt.ylabel('y', fontsize=font_size)
    plt.legend(fontsize=font_size)
    plt.title('xy_UWB', fontsize=font_size)
    plt.axis('equal')
    plt.tight_layout()
    plt.show()
def main():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    parent_dir = os.path.dirname(current_dir)
    pparent_dir = os.path.dirname(parent_dir)
    Config = load_config()
    data, data1, data2, data3 = load_data(pparent_dir)
    df, data1, data2, data3 = preprocess_data(data, data1, data2, data3)
    Ux_ref, Ux =  data['speed_rpm'] * 0.005655,  data['Ux_mps']
    x_ref, y_ref =  data1['EKF_x_m'],  data1['EKF_y_m']
    x, y =  data['EKF_x_m'],  data['EKF_y_m']
    TxR = data['Single_Motor_TxR_Nm']
    time = np.arange(len(x)) * Config.dt
    plot_comparison(time,x_ref, x, y_ref, y,Ux_ref, Ux)

    # plt.subplot(1, 1, 1)
    # plt.plot(time, TxR, label='TxR', linestyle='--', color='red')
    # # plt.axis('equal')
    # plt.tight_layout()
    # plt.show()
if __name__ == "__main__":
    main()