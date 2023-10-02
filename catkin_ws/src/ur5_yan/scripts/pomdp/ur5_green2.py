# -----------------------------------------
# This code is to control UR5e using the Python MoveIt user interfaces
# -----------------------------------------

#!/usr/bin/env python
# -*- coding: UTF-8 -*-

from __future__ import print_function
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from geometry_msgs.msg import PoseStamped
from math import pi
import tf
import roslib; roslib.load_manifest('robotiq_2f_gripper_control')
import actionlib
from control_msgs.msg import *
from trajectory_msgs.msg import *
from sensor_msgs.msg import JointState
from robotiq_2f_gripper_control.msg import _Robotiq2FGripper_robot_output  as outputMsg

from twisted.internet import reactor
from pymodbus.client.asynchronous import schedulers
from pymodbus.client.asynchronous.serial import AsyncModbusSerialClient
from pymodbus.client.asynchronous.twisted import ModbusClientProtocol

from utils import MoveGroupInteface
from get_pose import get_pose


# -----------------------------------------
# initialize
# -----------------------------------------
print('Control UR5e')
print('-'*30)
demo = MoveGroupInteface()
print('-'*30)

# -----------------------------------------
# ungrasp
# -----------------------------------------
demo.ungrasp()
print('ungrasp is done!')
print('-'*30)

# -----------------------------------------
# get joint status (pose for avoidance) 
# -----------------------------------------
# demo.plan_joint_goal(0, -1.8, 1.4, -1.18, -1.56, 0)
# print('pose for avoidance is done!')
# print('-'*30)

# -----------------------------------------
# get joint status (pose for observation) 
# -----------------------------------------
demo.plan_joint_goal(0, -0.9, 0.5, -1.57, -1.57, 0)
print('pose for observation is done!')
print('-'*30)

# -----------------------------------------
# get joint status (pose for grasping) 
# -----------------------------------------
demo.plan_joint_goal(0, -0.9, 0.5, -1.2, -1.57, 0)
print('pose for grasping is done!')
print('-'*30)
v1, v2, v3, v4, v5, v6 = demo.divide_pi(34.68,-45.60,76.31,-116.98,-90.01,38.74)
print(v1, v2, v3, v4, v5, v6)
demo.plan_joint_goal(v1, v2, v3, v4, v5, v6)
# -----------------------------------------
# reach for init position
# -----------------------------------------
v1, v2, v3, v4, v5, v6 = demo.divide_pi(34.68,-42.60,76.31,-116.98,-90.01,38.74)
print(v1, v2, v3, v4, v5, v6)
demo.plan_joint_goal(v1, v2, v3, v4, v5, v6)
print('reach for init position!')
print('-'*30)

# -----------------------------------------
# grasp
# -----------------------------------------
demo.grasp()
rospy.sleep(2.0)
print('grasp is done!')
print('-'*30)

v1, v2, v3, v4, v5, v6 = demo.divide_pi(34.68,-48.60,76.31,-116.98,-90.01,38.74)
demo.plan_joint_goal(v1, v2, v3, v4, v5, v6)
# -----------------------------------------
# reach for dest position
# -----------------------------------------
v1, v2, v3, v4, v5, v6 = demo.divide_pi(-3.52,-50.66,81.9,-122.89,-92.82,-7.29)
v1, v2, v3, v4, v5, v6 = get_pose(v1, v2, v3, v4, v5, v6) # adjusts stack level based on count
demo.plan_joint_goal(v1, v2, v3, v4, v5, v6)
print('reach for dest position!')
print('-'*30)

# -----------------------------------------
# ungrasp
# -----------------------------------------
demo.ungrasp()
rospy.sleep(2.0)
print('ungrasp is done!')
print('-'*30)

# -----------------------------------------
# get joint status (pose for observation) 
# -----------------------------------------
demo.plan_joint_goal(0, -0.9, 0.5, -1.57, -1.57, 0)
print('pose for observation is done!')
