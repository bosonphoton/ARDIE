#!/usr/bin/env python
import rospy
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseFeedback
import actionlib
import ftplib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, Point, PoseWithCovarianceStamped, Quaternion, PoseStamped
from nav_msgs.srv import GetPlan
from nav_msgs.msg import Odometry
import time

start_x = 0.0
start_y = 0.0


def callback_pose(data):
        global start_x
        global start_y
        start_x = data.pose.pose.position.x
        start_y = data.pose.pose.position.y
        with open('robot_location.txt', 'w') as f:
             f.write(str(start_x)+","+str(start_y))
             f.close()

def upload_to_server():
	server = 'ftp.quickkaro.com'
	username = 'kchanda2@perceptobot.com'
	password = 'Firefox_Mozilla'
	ftp_connection = ftplib.FTP(server, username, password)
	remote_path = "/"
	ftp_connection.cwd(remote_path)
	fh = open("entire_plan_robot_1.txt", 'rb')
	ftp_connection.storbinary('STOR entire_plan_robot_blue.txt', fh)
	fh.close()

def upload_task_status(item_list,task_status):
    with open('task_status.txt', 'w') as f:
        for item_name, current_task_status in zip(item_list,task_status):
            f.write(item_name+" "+str(current_task_status)+"\n")
        f.close()
	server = 'ftp.quickkaro.com'
	username = 'kchanda2@perceptobot.com'
	password = 'Firefox_Mozilla'
	ftp_connection = ftplib.FTP(server, username, password)
	remote_path = "/"
	ftp_connection.cwd(remote_path)
	fh = open("task_status.txt", 'rb')
	ftp_connection.storbinary('STOR task_status.txt', fh)
	fh.close()

def add_poses_to_dummy_file(poses):
    initial_x_coordinate = -100.0;
    initial_y_coordinate = -100.0;
    with open('robot_location.txt', 'w') as f:
        f.write(str(poses[len(poses)-1].pose.position.x)+","+str(poses[len(poses)-1].pose.position.y))
        f.close()

def add_poses_to_file(poses):
    initial_x_coordinate = -100.0;
    initial_y_coordinate = -100.0;
    with open('entire_plan_robot_1.txt', 'a+') as f:
        for index in range(1, len(poses)):
            x_coordinate = float("{0:.2f}".format(poses[index].pose.position.x));
            y_coordinate = float("{0:.2f}".format(poses[index].pose.position.y));
            if ((x_coordinate <= initial_x_coordinate - 0.6) or (x_coordinate >= initial_x_coordinate + 0.6) or (y_coordinate <= initial_y_coordinate - 0.6) or (y_coordinate >= initial_y_coordinate + 0.6)):
                f.write(str(x_coordinate)+"  "+str(y_coordinate)+"\n")
                initial_x_coordinate = x_coordinate;
                initial_y_coordinate = y_coordinate;
        f.close()
    with open('robot_location.txt', 'w') as f:
        f.write(str(poses[len(poses)-1].pose.position.x)+","+str(poses[len(poses)-1].pose.position.y))
        f.close()

def make_dummy_ar_plan(robot_goal_location):
    global start_x
    global start_y
    robot_goal_location_coordinates = robot_goal_location.split(",")
    try:
        rospy.wait_for_service('/move_base/make_plan')
        make_plan = rospy.ServiceProxy('/move_base/make_plan', GetPlan)
        with open('robot_location.txt','a+') as robot_loc:
            robot_loc.seek(0)
            current_robot_location = robot_loc.readline()
            robot_loc.close()
            current_robot_location_coordinates = current_robot_location.split(",")
            start_x = current_robot_location_coordinates[0]
            start_y = current_robot_location_coordinates[1]

        start = PoseStamped()
        goal = PoseStamped()
        start.header.frame_id = "map"
        goal.header.frame_id = "map"
        tolerance = 0.0
        start.pose.position.x= float(start_x)
        start.pose.position.y= float(start_y)
        goal.pose.position.x = float(robot_goal_location_coordinates[0])
        goal.pose.position.y = float(robot_goal_location_coordinates[1])
        plan_response = make_plan(start = start, goal = goal, tolerance = tolerance)
        poses = plan_response.plan.poses
        add_poses_to_dummy_file(poses)

    except rospy.ROSInterruptException:
       rospy.loginfo("Ctrl-C caught. Quitting")

def make_ar_plan(robot_goal_location):
    global start_x
    global start_y
    robot_goal_location_coordinates = robot_goal_location.split(",")
    try:
        rospy.wait_for_service('/move_base/make_plan')
        make_plan = rospy.ServiceProxy('/move_base/make_plan', GetPlan)
        with open('robot_location.txt','a+') as robot_loc:
            robot_loc.seek(0)
            current_robot_location = robot_loc.readline()
            robot_loc.close()
            current_robot_location_coordinates = current_robot_location.split(",")
            start_x = current_robot_location_coordinates[0]
            start_y = current_robot_location_coordinates[1]

        start = PoseStamped()
        goal = PoseStamped()
        start.header.frame_id = "map"
        goal.header.frame_id = "map"
        tolerance = 0.0
        start.pose.position.x= float(start_x)
        start.pose.position.y= float(start_y)
        goal.pose.position.x = float(robot_goal_location_coordinates[0])
        goal.pose.position.y = float(robot_goal_location_coordinates[1])
        plan_response = make_plan(start = start, goal = goal, tolerance = tolerance)
        poses = plan_response.plan.poses
        add_poses_to_file(poses)

    except rospy.ROSInterruptException:
       rospy.loginfo("Ctrl-C caught. Quitting")
