import numpy as np

def latlon_to_xy(latitude, longitude):
    """
    将经纬度转换为笛卡尔坐标系。

    参数:
    latitude (Series): 纬度，单位为度。
    longitude (Series): 经度，单位为度。

    返回:
    tuple: 转换后的x和y坐标。
    """
    # 定义原点的纬度和经度
    origin_lat = 39.96300548
    origin_lon = 116.30368265
    # 定义地球半径（单位：米）
    EARTH_RADIUS = 6371000

    # 将经纬度转换为米
    x = EARTH_RADIUS * np.cos(np.radians(origin_lat)) * np.radians(longitude - origin_lon)
    y = EARTH_RADIUS * np.radians(latitude - origin_lat)

    # 定义旋转角度和旋转矩阵
    Rotation_Angle = -0.15
    Rotation_Matrix = np.array([
        [np.cos(Rotation_Angle), -np.sin(Rotation_Angle)],
        [np.sin(Rotation_Angle), np.cos(Rotation_Angle)]
    ])

    # 将dx和dy转换为一个2D向量
    xy_2D = np.array([x, y])

    # 应用旋转矩阵
    x, y = np.dot(Rotation_Matrix, xy_2D)

    return x, y
