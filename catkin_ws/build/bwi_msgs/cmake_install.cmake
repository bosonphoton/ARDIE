# Install script for directory: /home/chels/catkin_ws/src/bwi_common/bwi_msgs

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
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE PROGRAM FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/_setup_util.py")
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
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE PROGRAM FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/env.sh")
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
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/setup.bash"
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/local_setup.bash"
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
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/setup.sh"
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/local_setup.sh"
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
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/setup.zsh"
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/local_setup.zsh"
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
file(INSTALL DESTINATION "/home/chels/catkin_ws/install" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/msg" TYPE FILE FILES
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobot.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/AvailableRobotArray.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDActionResult.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDAnimations.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDStatus.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LEDTestType.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/LogicalNavigationState.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/StopBaseStatus.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/ScavStatus.msg"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/msg/WeekTime.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/srv" TYPE FILE FILES
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/CheckBool.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/DoorHandlerInterface.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/GetNextImage.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ImageQuestion.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDClear.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDSetStatus.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LEDTestStrip.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/NextLocation.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/QuestionDialog.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ResolveChangeFloor.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/RobotTeleporterInterface.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SaveImageResponse.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/SemanticParser.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/StopBase.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ScavHunt.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UploadImage.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/UpdateObject.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/ActionUpdate.srv"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/srv/LocationAction.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/action" TYPE FILE FILES
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/action/LEDControl.action"
    "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/action/LogicalNav.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/msg" TYPE FILE FILES
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlAction.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionGoal.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionResult.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlActionFeedback.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlGoal.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlResult.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LEDControlFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/msg" TYPE FILE FILES
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavAction.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionGoal.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionResult.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavActionFeedback.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavGoal.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavResult.msg"
    "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/bwi_msgs/msg/LogicalNavFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/cmake" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/bwi_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/chels/catkin_ws/devel/.private/bwi_msgs/include/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/roseus/ros/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/common-lisp/ros/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/chels/catkin_ws/devel/.private/bwi_msgs/share/gennodejs/ros/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/chels/catkin_ws/devel/.private/bwi_msgs/lib/python2.7/dist-packages/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/chels/catkin_ws/devel/.private/bwi_msgs/lib/python2.7/dist-packages/bwi_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/bwi_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/cmake" TYPE FILE FILES "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/bwi_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs/cmake" TYPE FILE FILES
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/bwi_msgsConfig.cmake"
    "/home/chels/catkin_ws/build/bwi_msgs/catkin_generated/installspace/bwi_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/bwi_msgs" TYPE FILE FILES "/home/chels/catkin_ws/src/bwi_common/bwi_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/chels/catkin_ws/build/bwi_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/chels/catkin_ws/build/bwi_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
