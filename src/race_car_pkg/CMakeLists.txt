cmake_minimum_required(VERSION 3.0.2)
project(race_car_pkg)

#
find_package(catkin REQUIRED COMPONENTS
  message_generation
  roscpp
  rospy
  std_msgs
  serial
  tf2
  cmake_modules
  nlink_parser
)

find_package(Eigen REQUIRED)


generate_messages(
  DEPENDENCIES
  std_msgs
 )



catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES serial_node
  CATKIN_DEPENDS
  message_runtime
)
SET(CMAKE_BUILD_TYPE "RelWithDebInfo")

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
  ${EIGEN_INCLUDE_DIRS}
)




add_executable(serial_node src/serial_node.cpp)
target_link_libraries(serial_node
  ${catkin_LIBRARIES}
)
add_executable(Control_node_Planning_hw src/Control_node_Planning_hw.cpp)
target_link_libraries(Control_node_Planning_hw 
  ${catkin_LIBRARIES}
)
add_executable(Control_node_Planning_ca src/Control_node_Planning_ca.cpp)
target_link_libraries(Control_node_Planning_ca
  ${catkin_LIBRARIES}
)


