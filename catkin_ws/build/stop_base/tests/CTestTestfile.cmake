# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/bwi_common/stop_base/tests
# Build directory: /home/chels/catkin_ws/build/stop_base/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_stop_base_nosetests_test_transitions.py "/home/chels/catkin_ws/build/stop_base/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/stop_base/test_results/stop_base/nosetests-test_transitions.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/chels/catkin_ws/build/stop_base/test_results/stop_base" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/chels/catkin_ws/src/bwi_common/stop_base/tests/test_transitions.py --with-xunit --xunit-file=/home/chels/catkin_ws/build/stop_base/test_results/stop_base/nosetests-test_transitions.py.xml")
add_test(_ctest_stop_base_rostest_tests_stop_base_passthru.test "/home/chels/catkin_ws/build/stop_base/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/stop_base/test_results/stop_base/rostest-tests_stop_base_passthru.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/chels/catkin_ws/src/bwi_common/stop_base --package=stop_base --results-filename tests_stop_base_passthru.xml --results-base-dir \"/home/chels/catkin_ws/build/stop_base/test_results\" /home/chels/catkin_ws/src/bwi_common/stop_base/tests/stop_base_passthru.test ")
add_test(_ctest_stop_base_rostest_tests_stop_base_requests.test "/home/chels/catkin_ws/build/stop_base/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/stop_base/test_results/stop_base/rostest-tests_stop_base_requests.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/chels/catkin_ws/src/bwi_common/stop_base --package=stop_base --results-filename tests_stop_base_requests.xml --results-base-dir \"/home/chels/catkin_ws/build/stop_base/test_results\" /home/chels/catkin_ws/src/bwi_common/stop_base/tests/stop_base_requests.test ")