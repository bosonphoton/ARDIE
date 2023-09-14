# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dialogflow_ros: 5 messages, 1 services")

set(MSG_I_FLAGS "-Idialogflow_ros:/home/chels/catkin_ws/src/dialogflow_ros/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dialogflow_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" "dialogflow_ros/DialogflowParameter"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" "dialogflow_ros/DialogflowParameter:dialogflow_ros/DialogflowContext:dialogflow_ros/DialogflowResult"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" "dialogflow_ros/DialogflowParameter"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" "dialogflow_ros/DialogflowParameter:dialogflow_ros/DialogflowContext"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" "dialogflow_ros/DialogflowParameter:dialogflow_ros/DialogflowContext"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_custom_target(_dialogflow_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialogflow_ros" "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)

### Generating Services
_generate_srv_cpp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
)

### Generating Module File
_generate_module_cpp(dialogflow_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dialogflow_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dialogflow_ros_generate_messages dialogflow_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_cpp _dialogflow_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialogflow_ros_gencpp)
add_dependencies(dialogflow_ros_gencpp dialogflow_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialogflow_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)

### Generating Services
_generate_srv_eus(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
)

### Generating Module File
_generate_module_eus(dialogflow_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dialogflow_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dialogflow_ros_generate_messages dialogflow_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_eus _dialogflow_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialogflow_ros_geneus)
add_dependencies(dialogflow_ros_geneus dialogflow_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialogflow_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)

### Generating Services
_generate_srv_lisp(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
)

### Generating Module File
_generate_module_lisp(dialogflow_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dialogflow_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dialogflow_ros_generate_messages dialogflow_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_lisp _dialogflow_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialogflow_ros_genlisp)
add_dependencies(dialogflow_ros_genlisp dialogflow_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialogflow_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)

### Generating Services
_generate_srv_nodejs(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
)

### Generating Module File
_generate_module_nodejs(dialogflow_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dialogflow_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dialogflow_ros_generate_messages dialogflow_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_nodejs _dialogflow_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialogflow_ros_gennodejs)
add_dependencies(dialogflow_ros_gennodejs dialogflow_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialogflow_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)
_generate_msg_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)

### Generating Services
_generate_srv_py(dialogflow_ros
  "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg;/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
)

### Generating Module File
_generate_module_py(dialogflow_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dialogflow_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dialogflow_ros_generate_messages dialogflow_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowContext.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/srv/DialogflowService.srv" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowEvent.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowRequest.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowResult.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/dialogflow_ros/msg/DialogflowParameter.msg" NAME_WE)
add_dependencies(dialogflow_ros_generate_messages_py _dialogflow_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialogflow_ros_genpy)
add_dependencies(dialogflow_ros_genpy dialogflow_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialogflow_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dialogflow_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dialogflow_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dialogflow_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dialogflow_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialogflow_ros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dialogflow_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
