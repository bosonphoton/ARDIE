# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "diagnostic_msgs;dynamic_reconfigure;geometry_msgs;laser_filters;message_runtime;nodelet;pcl_ros;sensor_msgs;std_msgs;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsegbot_sensors_filters;-lrange_to_cloud".split(';') if "-lsegbot_sensors_filters;-lrange_to_cloud" != "" else []
PROJECT_NAME = "segbot_sensors"
PROJECT_SPACE_DIR = "/home/chels/catkin_ws/install"
PROJECT_VERSION = "0.3.5"
