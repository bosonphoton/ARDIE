# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bwi_perception: 0 messages, 10 services")

set(MSG_I_FLAGS "-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bwi_perception_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" ""
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" "visualization_msgs/Marker:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Vector3:geometry_msgs/Pose:visualization_msgs/MarkerArray:std_msgs/Header:std_msgs/ColorRGBA:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" "visualization_msgs/Marker:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:std_msgs/ColorRGBA:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_custom_target(_bwi_perception_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_perception" "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)
_generate_srv_cpp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
)

### Generating Module File
_generate_module_cpp(bwi_perception
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bwi_perception_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bwi_perception_generate_messages bwi_perception_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_cpp _bwi_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_perception_gencpp)
add_dependencies(bwi_perception_gencpp bwi_perception_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_perception_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)
_generate_srv_eus(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
)

### Generating Module File
_generate_module_eus(bwi_perception
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bwi_perception_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bwi_perception_generate_messages bwi_perception_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_eus _bwi_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_perception_geneus)
add_dependencies(bwi_perception_geneus bwi_perception_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_perception_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)
_generate_srv_lisp(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
)

### Generating Module File
_generate_module_lisp(bwi_perception
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bwi_perception_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bwi_perception_generate_messages bwi_perception_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_lisp _bwi_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_perception_genlisp)
add_dependencies(bwi_perception_genlisp bwi_perception_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_perception_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)
_generate_srv_nodejs(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
)

### Generating Module File
_generate_module_nodejs(bwi_perception
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bwi_perception_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bwi_perception_generate_messages bwi_perception_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_nodejs _bwi_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_perception_gennodejs)
add_dependencies(bwi_perception_gennodejs bwi_perception_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_perception_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)
_generate_srv_py(bwi_perception
  "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
)

### Generating Module File
_generate_module_py(bwi_perception
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bwi_perception_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bwi_perception_generate_messages bwi_perception_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ButtonDetection.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetPCD.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ExtractTabletopScene.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/PerceiveLargestHorizontalPlane.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/SetObstacles.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/GetCloud.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/DetectHorizontalPlanes.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/FeatureExtraction.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_perception/srv/ProcessVision.srv" NAME_WE)
add_dependencies(bwi_perception_generate_messages_py _bwi_perception_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_perception_genpy)
add_dependencies(bwi_perception_genpy bwi_perception_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_perception_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_perception
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(bwi_perception_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_perception
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(bwi_perception_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_perception
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(bwi_perception_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_perception
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(bwi_perception_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_perception
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(bwi_perception_generate_messages_py visualization_msgs_generate_messages_py)
endif()
