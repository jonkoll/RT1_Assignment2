#!/usr/bin/env python
import rospy
import actionlib
import actionlib.msg
import assignment_2_2022.msg
from std_srvs.srv import *
import sys
import select
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point, Pose, Twist
from assignment_2_2022.msg import PosVel

# Publish position and velocity to be printed by print_state
def pub_pos_vel(msg):
    global pub
    # Get info
    pos = msg.pose.pose.position
    velocity = msg.twist.twist.linear

    # Build message
    PosVel_msg = PosVel()
    PosVel_msg.msg_pos_x = pos.x
    PosVel_msg.msg_pos_y = pos.y
    PosVel_msg.msg_vel_x = velocity.x
    PosVel_msg.msg_vel_y = velocity.y

    # Publish
    pub.publish(PosVel_msg)

def user_input_action_client():
    # Setup
    user_input_action_client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2022.msg.PlanningAction)
    user_input_action_client.wait_for_server()

	
    # Loop while running
    while not rospy.is_shutdown():
        # Get user input
        print("Please enter goal coordinates, or any letter to cancel current goal")
        x_input = input("X-coordinate: ")
        y_input = input("Y-coordinate: ")
        
		# Cancel
        if x_input.isalpha() or y_input.isalpha():          #known bug: crashes if there is no current goal to cancel
            user_input_action_client.cancel_goal()

		# Update target
        else:			
            # Build target					
            goal = assignment_2_2022.msg.PlanningGoal()
            goal.target_pose.pose.position.x = float(x_input)
            goal.target_pose.pose.position.y = float(y_input)
			# Send target	
            user_input_action_client.send_goal(goal)


def main():
    # Setup
    rospy.init_node('action_user')
    global pub
    # Publish pos+vel
    pub = rospy.Publisher("/PosVel", PosVel, queue_size = 1)
    # Read odometry data
    sub_from_Odom = rospy.Subscriber("/odom", Odometry, pub_pos_vel)
    # Run action client (loop within)
    user_input_action_client()

if __name__ == '__main__':
    main()

