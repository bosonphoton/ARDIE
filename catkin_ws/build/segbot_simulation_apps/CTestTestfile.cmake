# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/segbot/segbot_simulation_apps
# Build directory: /home/chels/catkin_ws/build/segbot_simulation_apps
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_segbot_simulation_apps_roslaunch-check_launch "/home/chels/catkin_ws/build/segbot_simulation_apps/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/segbot_simulation_apps/test_results/segbot_simulation_apps/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/chels/catkin_ws/build/segbot_simulation_apps/test_results/segbot_simulation_apps" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/chels/catkin_ws/build/segbot_simulation_apps/test_results/segbot_simulation_apps/roslaunch-check_launch.xml\" \"/home/chels/catkin_ws/src/segbot/segbot_simulation_apps/launch\" ")
subdirs("gtest")
