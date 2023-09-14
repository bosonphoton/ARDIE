# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/bwi_common/plan_execution
# Build directory: /home/chels/catkin_ws/build/plan_execution
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_plan_execution_gtest_test_actasp "/home/chels/catkin_ws/build/plan_execution/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/plan_execution/test_results/plan_execution/gtest-test_actasp.xml" "--return-code" "/home/chels/catkin_ws/devel/.private/plan_execution/lib/plan_execution/test_actasp --gtest_output=xml:/home/chels/catkin_ws/build/plan_execution/test_results/plan_execution/gtest-test_actasp.xml")
subdirs("gtest")
subdirs("actasp/src")
subdirs("src/libplan_execution")
