# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/bu_common/bu_eb
# Build directory: /home/chels/catkin_ws/build/bu_eb
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_bu_eb_roslaunch-check_launch "/home/chels/catkin_ws/build/bu_eb/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/bu_eb/test_results/bu_eb/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/chels/catkin_ws/build/bu_eb/test_results/bu_eb" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/chels/catkin_ws/build/bu_eb/test_results/bu_eb/roslaunch-check_launch.xml\" \"/home/chels/catkin_ws/src/bu_common/bu_eb/launch\" ")
subdirs("gtest")
