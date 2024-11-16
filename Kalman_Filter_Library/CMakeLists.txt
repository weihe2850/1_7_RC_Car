cmake_minimum_required(VERSION 2.8)
project(Kalman_Filter_Library)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_C_FLAGS "-Wignored-attributes")

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

find_package(Eigen3 REQUIRED)

include_directories(include)

set(FILE_LIST
    src/filter_common.cpp
    src/filter_base.cpp
    src/ekf_pose_system.cpp)

#add_executable(Kalman_Filter_Library ${FILE_LIST})
add_library(KalmanFilter ${FILE_LIST})