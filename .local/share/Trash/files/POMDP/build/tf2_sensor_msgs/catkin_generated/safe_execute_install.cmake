execute_process(COMMAND "/home/chelsea/catkin_ws/build/tf2_sensor_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/chelsea/catkin_ws/build/tf2_sensor_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
