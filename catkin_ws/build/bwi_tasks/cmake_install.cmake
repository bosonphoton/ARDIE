# Install script for directory: /home/chels/catkin_ws/src/bwi_common/bwi_tasks

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/chels/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE PROGRAM FILES "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE PROGRAM FILES "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/setup.bash;/home/chels/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE FILE FILES
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/setup.bash"
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/setup.sh;/home/chels/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE FILE FILES
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/setup.sh"
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/setup.zsh;/home/chels/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE FILE FILES
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/setup.zsh"
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/chels/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/bwi_tasks.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_tasks/cmake" TYPE FILE FILES
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/bwi_tasksConfig.cmake"
    "/home/chels/catkin_ws/build/bwi_tasks/catkin_generated/installspace/bwi_tasksConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_tasks" TYPE FILE FILES "/home/chels/catkin_ws/src/bwi_common/bwi_tasks/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/back_and_forth_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/back_and_forth_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/between_doors")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/between_doors")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/filtering_tasks")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/filtering_tasks")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/go_to_door_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_door_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/go_to_location_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_location_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/go_to_object_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/go_to_object_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/learning_tasks_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/learning_tasks_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/look_for_person_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/look_for_person_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/meeting_experiment")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/meeting_experiment")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/message_delivery")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/message_delivery")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/simulator_learning_tasks_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/simulator_learning_tasks_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/visit_door_list")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/visit_door_list_gui")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_door_list_gui")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks" TYPE EXECUTABLE FILES "/home/chels/catkin_ws/devel/.private/bwi_tasks/lib/bwi_tasks/visit_and_ask_list_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node"
         OLD_RPATH "/home/chels/catkin_ws/devel/.private/plan_execution/lib:/home/chels/catkin_ws/devel/.private/bwi_planning_common/lib:/home/chels/catkin_ws/devel/.private/bwi_mapper/lib:/home/chels/catkin_ws/devel/.private/tf2/lib:/home/chels/catkin_ws/devel/.private/knowledge_representation/lib:/opt/ros/melodic/lib:/home/chels/catkin_ws/devel/.private/bwi_tools/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/bwi_tasks/visit_and_ask_list_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/chels/catkin_ws/build/bwi_tasks/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/chels/catkin_ws/build/bwi_tasks/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
