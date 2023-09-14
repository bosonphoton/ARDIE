# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/segway_v3/si_utils
# Build directory: /home/chels/catkin_ws/build/si_utils
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_si_utils_roslaunch-check_launch "/home/chels/catkin_ws/build/si_utils/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/si_utils/test_results/si_utils/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/chels/catkin_ws/build/si_utils/test_results/si_utils" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/chels/catkin_ws/build/si_utils/test_results/si_utils/roslaunch-check_launch.xml\" \"/home/chels/catkin_ws/src/segway_v3/si_utils/launch\" ")
subdirs("gtest")
