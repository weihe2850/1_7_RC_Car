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

SET(CMAKE_BUILD_TYPE "RelWithDebInfo")

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

add_executable(control_node_ca src/control_node_ca.cpp src/control_node.cpp)
target_link_libraries(control_node_ca ${catkin_LIBRARIES})

add_executable(control_node_mpc src/control_node_mpc.cpp src/control_node.cpp)
target_link_libraries(control_node_mpc ${catkin_LIBRARIES})


