# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "face_detector: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iface_detector:/home/beta/Desktop/face_detect_ws/src/face_detector/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(face_detector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_custom_target(_face_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detector" "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" "face_detector/my_list"
)

get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_custom_target(_face_detector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detector" "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg"
  "${MSG_I_FLAGS}"
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detector
)
_generate_msg_cpp(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detector
)

### Generating Services

### Generating Module File
_generate_module_cpp(face_detector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(face_detector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(face_detector_generate_messages face_detector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_cpp _face_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_cpp _face_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detector_gencpp)
add_dependencies(face_detector_gencpp face_detector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg"
  "${MSG_I_FLAGS}"
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detector
)
_generate_msg_eus(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detector
)

### Generating Services

### Generating Module File
_generate_module_eus(face_detector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(face_detector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(face_detector_generate_messages face_detector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_eus _face_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_eus _face_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detector_geneus)
add_dependencies(face_detector_geneus face_detector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg"
  "${MSG_I_FLAGS}"
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detector
)
_generate_msg_lisp(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detector
)

### Generating Services

### Generating Module File
_generate_module_lisp(face_detector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(face_detector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(face_detector_generate_messages face_detector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_lisp _face_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_lisp _face_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detector_genlisp)
add_dependencies(face_detector_genlisp face_detector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detector_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg"
  "${MSG_I_FLAGS}"
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detector
)
_generate_msg_nodejs(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detector
)

### Generating Services

### Generating Module File
_generate_module_nodejs(face_detector
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detector
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(face_detector_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(face_detector_generate_messages face_detector_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_nodejs _face_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_nodejs _face_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detector_gennodejs)
add_dependencies(face_detector_gennodejs face_detector_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detector_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg"
  "${MSG_I_FLAGS}"
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector
)
_generate_msg_py(face_detector
  "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector
)

### Generating Services

### Generating Module File
_generate_module_py(face_detector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(face_detector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(face_detector_generate_messages face_detector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/face_msgs.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_py _face_detector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/beta/Desktop/face_detect_ws/src/face_detector/msg/my_list.msg" NAME_WE)
add_dependencies(face_detector_generate_messages_py _face_detector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detector_genpy)
add_dependencies(face_detector_genpy face_detector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(face_detector_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(face_detector_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(face_detector_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detector
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(face_detector_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(face_detector_generate_messages_py std_msgs_generate_messages_py)
endif()
