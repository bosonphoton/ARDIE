# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bwi_msgs: 24 messages, 21 services")

set(MSG_I_FLAGS "-Ibwi_msgs:/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg;-Ibwi_msgs:/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Ibwi_planning_common:/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bwi_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" "bwi_planning_common/PlannerAtom"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" "bwi_msgs/LEDStatus"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" "bwi_msgs/AvailableRobot"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:bwi_msgs/LEDAnimations:bwi_msgs/LEDControlGoal:bwi_msgs/LEDControlActionGoal:bwi_msgs/LEDControlResult:std_msgs/Header:bwi_msgs/LEDControlActionFeedback:bwi_msgs/LEDControlActionResult:bwi_msgs/LEDControlFeedback"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" "bwi_msgs/LEDControlResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" "bwi_msgs/LogicalNavResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:bwi_msgs/LogicalNavigationState:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" "actionlib_msgs/GoalID:bwi_msgs/LogicalNavGoal:bwi_planning_common/PlannerAtom:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" "sensor_msgs/Image:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" "bwi_msgs/WeekTime"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" "sensor_msgs/Image:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" "bwi_msgs/LEDAnimations:actionlib_msgs/GoalID:bwi_msgs/LEDControlGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" "sensor_msgs/Image:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" "bwi_msgs/WeekTime"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" "bwi_msgs/LogicalNavigationState"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" "geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" "bwi_msgs/LEDAnimations"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:bwi_msgs/LogicalNavFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" "bwi_msgs/LEDTestType"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" "bwi_msgs/StopBaseStatus"
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" "bwi_msgs/LogicalNavResult:actionlib_msgs/GoalID:bwi_planning_common/PlannerAtom:actionlib_msgs/GoalStatus:bwi_msgs/LogicalNavGoal:bwi_msgs/LogicalNavActionFeedback:bwi_msgs/LogicalNavigationState:bwi_msgs/LogicalNavActionGoal:bwi_msgs/LogicalNavFeedback:std_msgs/Header:bwi_msgs/LogicalNavActionResult"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_custom_target(_bwi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_msgs" "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:bwi_msgs/LEDControlFeedback:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_cpp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)

### Generating Services
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_cpp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
)

### Generating Module File
_generate_module_cpp(bwi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bwi_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bwi_msgs_generate_messages bwi_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_cpp _bwi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_msgs_gencpp)
add_dependencies(bwi_msgs_gencpp bwi_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_msg_eus(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)

### Generating Services
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)
_generate_srv_eus(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
)

### Generating Module File
_generate_module_eus(bwi_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bwi_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bwi_msgs_generate_messages bwi_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_eus _bwi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_msgs_geneus)
add_dependencies(bwi_msgs_geneus bwi_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_msg_lisp(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)

### Generating Services
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)
_generate_srv_lisp(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
)

### Generating Module File
_generate_module_lisp(bwi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bwi_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bwi_msgs_generate_messages bwi_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_lisp _bwi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_msgs_genlisp)
add_dependencies(bwi_msgs_genlisp bwi_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_msg_nodejs(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)

### Generating Services
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)
_generate_srv_nodejs(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
)

### Generating Module File
_generate_module_nodejs(bwi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bwi_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bwi_msgs_generate_messages bwi_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_nodejs _bwi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_msgs_gennodejs)
add_dependencies(bwi_msgs_gennodejs bwi_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/chels/catkin_ws/src/bwi_common/bwi_planning_common/msg/PlannerAtom.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg;/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_msg_py(bwi_msgs
  "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)

### Generating Services
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)
_generate_srv_py(bwi_msgs
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
  "${MSG_I_FLAGS}"
  "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
)

### Generating Module File
_generate_module_py(bwi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bwi_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bwi_msgs_generate_messages bwi_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg" NAME_WE)
add_dependencies(bwi_msgs_generate_messages_py _bwi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_msgs_genpy)
add_dependencies(bwi_msgs_genpy bwi_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(bwi_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET bwi_planning_common_generate_messages_cpp)
  add_dependencies(bwi_msgs_generate_messages_cpp bwi_planning_common_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(bwi_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(bwi_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bwi_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(bwi_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET bwi_planning_common_generate_messages_eus)
  add_dependencies(bwi_msgs_generate_messages_eus bwi_planning_common_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(bwi_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(bwi_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bwi_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(bwi_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET bwi_planning_common_generate_messages_lisp)
  add_dependencies(bwi_msgs_generate_messages_lisp bwi_planning_common_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(bwi_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(bwi_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bwi_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(bwi_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET bwi_planning_common_generate_messages_nodejs)
  add_dependencies(bwi_msgs_generate_messages_nodejs bwi_planning_common_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(bwi_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(bwi_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bwi_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(bwi_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET bwi_planning_common_generate_messages_py)
  add_dependencies(bwi_msgs_generate_messages_py bwi_planning_common_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(bwi_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(bwi_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bwi_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
