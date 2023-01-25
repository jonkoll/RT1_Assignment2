#! /usr/bin/env python
import rospy 
from assignment_2_2022.srv import goalTally, goalTallyResponse 
import actionlib   
import actionlib.msg  
import assignment_2_2022.msg 
import os

class goal_tracker_service:
    def __init__(self):
        # Setup
        self.num_goals_cancelled = 0
        self.num_goals_reached   = 0

        # Service and input from PlanningActionResult
        self.srv = rospy.Service('goal_tracker_service', goalTally, self.data)
        self.sub_result = rospy.Subscriber('/reaching_goal/result', assignment_2_2022.msg.PlanningActionResult, self.result_callback)


    def result_callback(self, msg):
        status = msg.status.status
        os.system("clear")
        if status == 2:                 # Goal cancelled
            self.num_goals_cancelled += 1
            print("The goal has been cancelled")
        elif status == 3:               # Goal reached
            self.num_goals_reached   += 1
            print("The goal has been reached")

        print("Total number of goals reached:   ", self.num_goals_reached)
        print("Total number of goals cancelled: ", self.num_goals_cancelled)  
        print("-------------------------------------")

    def data(self, req):
        return goalTally(self.num_goals_reached, self.num_goals_cancelled)


def main():
    # Init node and service
    rospy.init_node('goal_tracker')
    goal_tracker = goal_tracker_service()
    
    # Wait for new info to be published
    rospy.spin()

if __name__ == "__main__":
    main()

