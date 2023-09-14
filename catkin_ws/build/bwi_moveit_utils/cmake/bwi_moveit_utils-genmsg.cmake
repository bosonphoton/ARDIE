# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bwi_moveit_utils: 0 messages, 3 services")

set(MSG_I_FLAGS "-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bwi_moveit_utils_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_custom_target(_bwi_moveit_utils_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_moveit_utils" "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" "geometry_msgs/PoseStamped:shape_msgs/SolidPrimitive:moveit_msgs/BoundingVolume:shape_msgs/Mesh:moveit_msgs/CollisionObject:shape_msgs/Plane:shape_msgs/MeshTriangle:moveit_msgs/OrientationConstraint:object_recognition_msgs/ObjectType:geometry_msgs/Vector3:geometry_msgs/Pose:moveit_msgs/Constraints:std_msgs/Header:moveit_msgs/PositionConstraint:moveit_msgs/JointConstraint:geometry_msgs/Quaternion:moveit_msgs/VisibilityConstraint:geometry_msgs/Point"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_custom_target(_bwi_moveit_utils_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_moveit_utils" "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" "geometry_msgs/PoseStamped:shape_msgs/SolidPrimitive:moveit_msgs/BoundingVolume:shape_msgs/Mesh:object_recognition_msgs/ObjectType:shape_msgs/Plane:shape_msgs/MeshTriangle:moveit_msgs/OrientationConstraint:geometry_msgs/Vector3:moveit_msgs/JointConstraint:geometry_msgs/Pose:moveit_msgs/Constraints:std_msgs/Header:moveit_msgs/PositionConstraint:moveit_msgs/CollisionObject:geometry_msgs/Point:moveit_msgs/VisibilityConstraint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_custom_target(_bwi_moveit_utils_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bwi_moveit_utils" "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" "shape_msgs/SolidPrimitive:moveit_msgs/BoundingVolume:shape_msgs/Mesh:moveit_msgs/CollisionObject:shape_msgs/Plane:moveit_msgs/VisibilityConstraint:shape_msgs/MeshTriangle:moveit_msgs/OrientationConstraint:object_recognition_msgs/ObjectType:geometry_msgs/Vector3:geometry_msgs/Pose:moveit_msgs/Constraints:std_msgs/Header:moveit_msgs/PositionConstraint:moveit_msgs/JointConstraint:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_cpp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_cpp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils
)

### Generating Module File
_generate_module_cpp(bwi_moveit_utils
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bwi_moveit_utils_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bwi_moveit_utils_generate_messages bwi_moveit_utils_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_cpp _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_cpp _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_cpp _bwi_moveit_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_moveit_utils_gencpp)
add_dependencies(bwi_moveit_utils_gencpp bwi_moveit_utils_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_moveit_utils_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_eus(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_eus(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils
)

### Generating Module File
_generate_module_eus(bwi_moveit_utils
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bwi_moveit_utils_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bwi_moveit_utils_generate_messages bwi_moveit_utils_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_eus _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_eus _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_eus _bwi_moveit_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_moveit_utils_geneus)
add_dependencies(bwi_moveit_utils_geneus bwi_moveit_utils_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_moveit_utils_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_lisp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_lisp(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils
)

### Generating Module File
_generate_module_lisp(bwi_moveit_utils
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bwi_moveit_utils_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bwi_moveit_utils_generate_messages bwi_moveit_utils_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_lisp _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_lisp _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_lisp _bwi_moveit_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_moveit_utils_genlisp)
add_dependencies(bwi_moveit_utils_genlisp bwi_moveit_utils_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_moveit_utils_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_nodejs(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_nodejs(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils
)

### Generating Module File
_generate_module_nodejs(bwi_moveit_utils
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bwi_moveit_utils_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bwi_moveit_utils_generate_messages bwi_moveit_utils_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_nodejs _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_nodejs _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_nodejs _bwi_moveit_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_moveit_utils_gennodejs)
add_dependencies(bwi_moveit_utils_gennodejs bwi_moveit_utils_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_moveit_utils_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_py(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils
)
_generate_srv_py(bwi_moveit_utils
  "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/BoundingVolume.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/VisibilityConstraint.msg;/opt/ros/melodic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/OrientationConstraint.msg;/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/Constraints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/PositionConstraint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/JointConstraint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils
)

### Generating Module File
_generate_module_py(bwi_moveit_utils
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bwi_moveit_utils_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bwi_moveit_utils_generate_messages bwi_moveit_utils_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitJointPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_py _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitWaypoint.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_py _bwi_moveit_utils_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chels/catkin_ws/src/bwi_common/bwi_moveit_utils/srv/MoveitCartesianPose.srv" NAME_WE)
add_dependencies(bwi_moveit_utils_generate_messages_py _bwi_moveit_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bwi_moveit_utils_genpy)
add_dependencies(bwi_moveit_utils_genpy bwi_moveit_utils_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bwi_moveit_utils_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bwi_moveit_utils
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(bwi_moveit_utils_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(bwi_moveit_utils_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(bwi_moveit_utils_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bwi_moveit_utils
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(bwi_moveit_utils_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(bwi_moveit_utils_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(bwi_moveit_utils_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bwi_moveit_utils
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(bwi_moveit_utils_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(bwi_moveit_utils_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(bwi_moveit_utils_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bwi_moveit_utils
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(bwi_moveit_utils_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(bwi_moveit_utils_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(bwi_moveit_utils_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bwi_moveit_utils
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(bwi_moveit_utils_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(bwi_moveit_utils_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(bwi_moveit_utils_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
