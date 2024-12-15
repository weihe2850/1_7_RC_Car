cmake_minimum_required(VERSION 3.0.2)
project(race_car_pkg)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
  std_msgs
  serial
  tf2
  cmake_modules
  nlink_parser
  in2ulv_msgs
)

# 指定消息文件目录和文件
add_message_files(
  FILES
  CarStates.msg
)

# 生成消息
generate_messages(
  DEPENDENCIES
  std_msgs
)

find_package(Eigen3 REQUIRED)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    message_runtime
    roscpp
    rospy
    std_msgs
    serial
    tf2
    nlink_parser
    in2ulv_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
)

add_executable(serial_node src/serial_node.cpp)
target_link_libraries(serial_node
  ${catkin_LIBRARIES}
)

add_executable(control_node_hw src/control_node_hw.cpp src/control_node.cpp)
target_link_libraries(control_node_hw ${catkin_LIBRARIES})
add_dependencies(control_node_hw ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(control_node_ca src/control_node_ca.cpp src/control_node.cpp)
target_link_libraries(control_node_ca ${catkin_LIBRARIES})
add_dependencies(control_node_ca ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(control_node_df src/control_node_df.cpp src/control_node.cpp)
target_link_libraries(control_node_df ${catkin_LIBRARIES})
add_dependencies(control_node_df ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(mpc_main src/mpc_main.cpp src/car_model.cpp src/mpc_func.cpp)
target_link_libraries(mpc_main ${catkin_LIBRARIES} casadi)  # 链接 CasADi 库
add_dependencies(mpc_main ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

add_executable(control_node_mpc src/control_node_mpc.cpp src/mpc_func.cpp src/control_node.cpp)
target_link_libraries(control_node_mpc ${catkin_LIBRARIES} casadi)
add_dependencies(control_node_mpc ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

