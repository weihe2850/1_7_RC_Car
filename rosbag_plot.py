import rosbag
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from geometry_msgs.msg import Vector3Stamped
from geometry_msgs.msg import PoseStamped
# 打开bag文件
bag = rosbag.Bag('tiantai.bag')
# 获取话题信息
info = bag.get_type_and_topic_info()

# # 打印话题数量
# print("Number of topics:", len(info.topics))
# #具体话题有什么
# print("Topics:", info.topics)


# 创建空列表来保存/filter/positionlla话题的数据
latitude_positionlla = []
longitude_positionlla = []
time_positionlla = []

# 读取/filter/positionlla话题的数据
for topic, msg, t in bag.read_messages(topics=['/filter/positionlla']):
        latitude_positionlla.append(msg.vector.x)
        longitude_positionlla.append(msg.vector.y)
        time_positionlla.append(t.to_sec())

# 创建空列表来保存/gnss_pose话题的数据
latitude_gnss_pose = []
longitude_gnss_pose = []
time_gnss_pose  = []

# 读取/gnss_pose话题的数据
for topic, msg, t in bag.read_messages(topics=['/gnss_pose']):
        latitude_gnss_pose.append(msg.pose.position.x)
        longitude_gnss_pose.append(msg.pose.position.y)
        time_gnss_pose.append(t.to_sec())
# 创建空列表来保存imu/acceleration话题的数据
acceleration_x = []
acceleration_y = []
acceleration_z = []
time_acceleration = []

# 读取imu/acceleration话题的数据
for topic, msg, t in bag.read_messages(topics=['/imu/acceleration']):
        acceleration_x.append(msg.vector.x)
        acceleration_y.append(msg.vector.y)
        acceleration_z.append(msg.vector.z)
        time_acceleration.append(t.to_sec())

# 创建空列表来保存imu/angular_velocity话题的数据
angular_velocity_x = []
angular_velocity_y = []
angular_velocity_z = []
time_angular_velocity = []

# 读取imu/angular_velocity话题的数据
for topic, msg, t in bag.read_messages(topics=['/imu/angular_velocity']):
        angular_velocity_x.append(msg.vector.x)
        angular_velocity_y.append(msg.vector.y)
        angular_velocity_z.append(msg.vector.z)
        time_angular_velocity.append(t.to_sec())
     

bag.close()
# 创建一个新的matplotlib图形

# 计算最小的行数
min_length = min(len(time_acceleration), len(acceleration_x), len(acceleration_y), len(acceleration_z), len(time_gnss_pose), len(latitude_gnss_pose), len(longitude_gnss_pose), len(time_positionlla), len(latitude_positionlla), len(longitude_positionlla))
# 将时间戳转换为秒，初始时间设为0
time_imu_seconds = [t - time_acceleration[0] for t in time_acceleration[:min_length]]
time_gnss_seconds = [t - time_gnss_pose[0] for t in time_gnss_pose[:min_length]]
time_positionlla_seconds = [t - time_positionlla[0] for t in time_positionlla[:min_length]]
# 创建一个DataFrame
df = pd.DataFrame({
    'Time_IMU': time_imu_seconds,
    'Acceleration_X': acceleration_x[:min_length],
    'Acceleration_Y': acceleration_y[:min_length],
    'Acceleration_Z': acceleration_z[:min_length],
    'Latitude_GNSS': latitude_gnss_pose[:min_length],
    'Longitude_GNSS': longitude_gnss_pose[:min_length],
    'Latitude_Positionlla': latitude_positionlla[:min_length],
    'Longitude_Positionlla': longitude_positionlla[:min_length]
})

# 保存为CSV文件
df.to_csv('data.csv', index=False)



# plt.figure()

# # 绘制经纬度轨迹
# plt.plot(time_gnss_pose, latitude_gnss_pose)
# plt.plot(time_positionlla, latitude_positionlla)

# plt.xlabel('Time')
# plt.ylabel('Latitude')

# # 显示图形
# plt.show()

# # 创建一个新的matplotlib图形
# plt.figure()

# # 绘制加速度数据
# plt.subplot(2, 1, 1)  # 创建一个2行1列的子图，并开始绘制第1个子图
# plt.plot(time_acceleration, acceleration_x, label='x')
# plt.plot(time_acceleration, acceleration_y, label='y')
# plt.plot(time_acceleration, acceleration_z, label='z')
# plt.xlabel('Time')
# plt.ylabel('Acceleration')
# plt.legend()  # 显示图例

# # 绘制角速度数据
# plt.subplot(2, 1, 2)  # 创建一个2行1列的子图，并开始绘制第2个子图
# plt.plot(time_angular_velocity, angular_velocity_x, label='x')
# plt.plot(time_angular_velocity, angular_velocity_y, label='y')
# plt.plot(time_angular_velocity, angular_velocity_z, label='z')
# plt.xlabel('Time')
# plt.ylabel('Angular Velocity')
# plt.legend()  # 显示图例

# # 显示图形
# plt.show()