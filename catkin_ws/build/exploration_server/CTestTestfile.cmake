# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/frontier_exploration/exploration_server
# Build directory: /home/chels/catkin_ws/build/exploration_server
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_exploration_server_roslint_package "/home/chels/catkin_ws/build/exploration_server/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/exploration_server/test_results/exploration_server/roslint-exploration_server.xml" "--working-dir" "/home/chels/catkin_ws/build/exploration_server" "--return-code" "/opt/ros/melodic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/chels/catkin_ws/build/exploration_server/test_results/exploration_server/roslint-exploration_server.xml make roslint_exploration_server")
subdirs("gtest")
