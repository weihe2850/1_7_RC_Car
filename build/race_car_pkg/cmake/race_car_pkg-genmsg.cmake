# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "race_car_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irace_car_pkg:/home/inin/weihe_ws/src/race_car_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(race_car_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_custom_target(_race_car_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "race_car_pkg" "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(race_car_pkg
  "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_car_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(race_car_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_car_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(race_car_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(race_car_pkg_generate_messages race_car_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_dependencies(race_car_pkg_generate_messages_cpp _race_car_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_car_pkg_gencpp)
add_dependencies(race_car_pkg_gencpp race_car_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_car_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(race_car_pkg
  "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/race_car_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(race_car_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/race_car_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(race_car_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(race_car_pkg_generate_messages race_car_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_dependencies(race_car_pkg_generate_messages_eus _race_car_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_car_pkg_geneus)
add_dependencies(race_car_pkg_geneus race_car_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_car_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(race_car_pkg
  "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_car_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(race_car_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_car_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(race_car_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(race_car_pkg_generate_messages race_car_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_dependencies(race_car_pkg_generate_messages_lisp _race_car_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_car_pkg_genlisp)
add_dependencies(race_car_pkg_genlisp race_car_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_car_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(race_car_pkg
  "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/race_car_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(race_car_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/race_car_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(race_car_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(race_car_pkg_generate_messages race_car_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_dependencies(race_car_pkg_generate_messages_nodejs _race_car_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_car_pkg_gennodejs)
add_dependencies(race_car_pkg_gennodejs race_car_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_car_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(race_car_pkg
  "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_car_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(race_car_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_car_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(race_car_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(race_car_pkg_generate_messages race_car_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/inin/weihe_ws/src/race_car_pkg/msg/CarStates.msg" NAME_WE)
add_dependencies(race_car_pkg_generate_messages_py _race_car_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(race_car_pkg_genpy)
add_dependencies(race_car_pkg_genpy race_car_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS race_car_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_car_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/race_car_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(race_car_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/race_car_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/race_car_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(race_car_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_car_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/race_car_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(race_car_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/race_car_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/race_car_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(race_car_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_car_pkg)
  install(CODE "execute_process(COMMAND \"/home/inin/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_car_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/race_car_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(race_car_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
