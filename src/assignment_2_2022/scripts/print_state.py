#! /usr/bin/env python
import rospy
import math
import time
import os
from assignment_2_2022.msg import PosVel


class PrintInfo:
    def __init__(self):
        # Setup
        self.freq = rospy.get_param("frequency")
        self.last_print_time = 0
        self.sub_pos = rospy.Subscriber("/PosVel", PosVel, self.posvel_callback)

    def posvel_callback(self, msg):
        period_ms    = (1.0/self.freq)  
        curr_time_ms = time.time()          #returns current time in ms
        # Conversion to seconds
        period = period_ms*1000
        curr_time = curr_time_ms*1000

        if  curr_time - self.last_print_time > period:
            # Get target and current pos + vel
            target_x = rospy.get_param("des_pos_x")
            target_y = rospy.get_param("des_pos_y")
            robot_x = msg.msg_pos_x
            robot_y = msg.msg_pos_y
            vel_x = msg.msg_vel_x
            vel_y = msg.msg_vel_y   

            # Compute distance and speed
            distance = math.dist([target_x, target_y], [robot_x, robot_y])
            speed = math.sqrt(vel_x**2 + vel_y**2)

            # Print the distance and speed information
            os.system("clear")
            print("Distance: ", round(distance, 3))
            print("Speed:    ", round(speed, 3))

            # Update the last printed time
            self.last_print_time = curr_time

def main():
    # Setup
    rospy.init_node('print_dis_avgvel')
    print_dis_avgvel = PrintInfo()
    
    # Wait for info to be published on PosVel
    rospy.spin()

if __name__ == "__main__":
    main()

