# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tgs_ros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itgs_ros:/home/raya/oop_ros/src/tgs_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tgs_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_custom_target(_tgs_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tgs_ros" "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" ""
)

get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_custom_target(_tgs_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tgs_ros" "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tgs_ros
)
_generate_msg_cpp(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tgs_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(tgs_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tgs_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tgs_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tgs_ros_generate_messages tgs_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_cpp _tgs_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_cpp _tgs_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tgs_ros_gencpp)
add_dependencies(tgs_ros_gencpp tgs_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tgs_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tgs_ros
)
_generate_msg_eus(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tgs_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(tgs_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tgs_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tgs_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tgs_ros_generate_messages tgs_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_eus _tgs_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_eus _tgs_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tgs_ros_geneus)
add_dependencies(tgs_ros_geneus tgs_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tgs_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tgs_ros
)
_generate_msg_lisp(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tgs_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(tgs_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tgs_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tgs_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tgs_ros_generate_messages tgs_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_lisp _tgs_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_lisp _tgs_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tgs_ros_genlisp)
add_dependencies(tgs_ros_genlisp tgs_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tgs_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tgs_ros
)
_generate_msg_nodejs(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tgs_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tgs_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tgs_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tgs_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tgs_ros_generate_messages tgs_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_nodejs _tgs_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_nodejs _tgs_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tgs_ros_gennodejs)
add_dependencies(tgs_ros_gennodejs tgs_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tgs_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros
)
_generate_msg_py(tgs_ros
  "/home/raya/oop_ros/src/tgs_ros/msg/order.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros
)

### Generating Services

### Generating Module File
_generate_module_py(tgs_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tgs_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tgs_ros_generate_messages tgs_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/driver.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_py _tgs_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raya/oop_ros/src/tgs_ros/msg/order.msg" NAME_WE)
add_dependencies(tgs_ros_generate_messages_py _tgs_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tgs_ros_genpy)
add_dependencies(tgs_ros_genpy tgs_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tgs_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tgs_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tgs_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tgs_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tgs_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tgs_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tgs_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tgs_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tgs_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tgs_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tgs_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tgs_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tgs_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tgs_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tgs_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
