# CMake generated Testfile for 
# Source directory: /home/chels/catkin_ws/src/cv_camera
# Build directory: /home/chels/catkin_ws/build/cv_camera
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_cv_camera_rostest_test_cv_camera.test "/home/chels/catkin_ws/build/cv_camera/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/cv_camera/test_results/cv_camera/rostest-test_cv_camera.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/chels/catkin_ws/src/cv_camera --package=cv_camera --results-filename test_cv_camera.xml --results-base-dir \"/home/chels/catkin_ws/build/cv_camera/test_results\" /home/chels/catkin_ws/src/cv_camera/test/cv_camera.test ")
add_test(_ctest_cv_camera_rostest_test_no_yaml.test "/home/chels/catkin_ws/build/cv_camera/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chels/catkin_ws/build/cv_camera/test_results/cv_camera/rostest-test_no_yaml.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/chels/catkin_ws/src/cv_camera --package=cv_camera --results-filename test_no_yaml.xml --results-base-dir \"/home/chels/catkin_ws/build/cv_camera/test_results\" /home/chels/catkin_ws/src/cv_camera/test/no_yaml.test ")
subdirs("gtest")
