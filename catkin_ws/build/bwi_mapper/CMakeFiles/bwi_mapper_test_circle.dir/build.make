# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/chels/catkin_ws/src/bwi_common/bwi_mapper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chels/catkin_ws/build/bwi_mapper

# Include any dependencies generated for this target.
include CMakeFiles/bwi_mapper_test_circle.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bwi_mapper_test_circle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bwi_mapper_test_circle.dir/flags.make

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o: CMakeFiles/bwi_mapper_test_circle.dir/flags.make
CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o: /home/chels/catkin_ws/src/bwi_common/bwi_mapper/test/test_circle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chels/catkin_ws/build/bwi_mapper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o -c /home/chels/catkin_ws/src/bwi_common/bwi_mapper/test/test_circle.cpp

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chels/catkin_ws/src/bwi_common/bwi_mapper/test/test_circle.cpp > CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.i

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chels/catkin_ws/src/bwi_common/bwi_mapper/test/test_circle.cpp -o CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.s

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.requires:

.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.requires

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.provides: CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.requires
	$(MAKE) -f CMakeFiles/bwi_mapper_test_circle.dir/build.make CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.provides.build
.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.provides

CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.provides.build: CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o


# Object files for target bwi_mapper_test_circle
bwi_mapper_test_circle_OBJECTS = \
"CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o"

# External object files for target bwi_mapper_test_circle
bwi_mapper_test_circle_EXTERNAL_OBJECTS =

/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: CMakeFiles/bwi_mapper_test_circle.dir/build.make
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /home/chels/catkin_ws/devel/.private/bwi_mapper/lib/libbwi_mapper.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libcv_bridge.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libmap_server_image_loader.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libroscpp.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/librosconsole.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libtf2.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/librostime.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /opt/ros/melodic/lib/libcpp_common.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle: CMakeFiles/bwi_mapper_test_circle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chels/catkin_ws/build/bwi_mapper/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bwi_mapper_test_circle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bwi_mapper_test_circle.dir/build: /home/chels/catkin_ws/devel/.private/bwi_mapper/lib/bwi_mapper/test_circle

.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/build

CMakeFiles/bwi_mapper_test_circle.dir/requires: CMakeFiles/bwi_mapper_test_circle.dir/test/test_circle.cpp.o.requires

.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/requires

CMakeFiles/bwi_mapper_test_circle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bwi_mapper_test_circle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/clean

CMakeFiles/bwi_mapper_test_circle.dir/depend:
	cd /home/chels/catkin_ws/build/bwi_mapper && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chels/catkin_ws/src/bwi_common/bwi_mapper /home/chels/catkin_ws/src/bwi_common/bwi_mapper /home/chels/catkin_ws/build/bwi_mapper /home/chels/catkin_ws/build/bwi_mapper /home/chels/catkin_ws/build/bwi_mapper/CMakeFiles/bwi_mapper_test_circle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bwi_mapper_test_circle.dir/depend

