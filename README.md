# RT1_Assignment2
This repo contains two ROS packages, which combine to simulate, communicate with and control a moving robot. The first package is available at https://github.com/CarmineD8/robot_description.git, and deals with the simulation and communication with the robot. The second package is built on top of https://github.com/CarmineD8/assignment_2_2022, and implements user control of the robot through three nodes. Combined, the packages allow the robot to move to goal points provided by the user, and provides information about the robot state and a tally of goals reached and cancelled. 

### Full assignment text
The package assignment_2_2022: https://github.com/CarmineD8/assignment_2_2022 provides an implementation of
an action server that moves a robot in the environment by implementing the bug0 algorithm . You can launch the
simulation with roslaunch assignment_2_2002 assignment1.launch
What should you do here?
- Create a new package, in which you will develop three nodes:
- (a) A node that implements an action client, allowing the user to set a target (x, y) or to cancel it. The node
also publishes the robot position and velocity as a custom message (x,y, vel_x, vel_z), by relying on the values
published on the topic /odom. Please consider that, if you cannot implement everything in the same node, you
can also develop two different nodes, one implementing the user interface and one implementing the publisher
of the custom message.
- (b) A service node that, when called, prints the number of goals reached and cancelled;
- (c) A node that subscribes to the robot’s position and velocity (using the custom message) and prints the
distance of the robot from the target and the robot’s average speed. Use a parameter to set how fast the
node publishes the information.
- Also create a launch file to start the whole simulation. Set the value for the frequency with which node (c) publishes
the information.


# The assignment_2_2022 package

## Node (a): User input 
The first node implements an action client, communicating according to Planning.action. It is launched in a new terminal window, and prompts the user to input the coordinates of a goal. By entering a letter in place of one of the coordinates, the user can cancel the current goal. A goal object is built from the user input, and publised to be used by the other nodes. In addition to this, the node also subscribes to /odom and publishes a custom message PosVel.msg. 
![diagram(1)](https://user-images.githubusercontent.com/97529847/214821257-95055b0d-a9e2-4557-9a33-6df890f81089.svg)

## Node (b): Goal tracker
The third node keeps track of the number of goals reached and cancelled, by reading from msg.status.status, which provides information about whether a target has been reached or cancelled. Whenever this happens, the node then clears the terminal and prints the current tally. 

## Node (c): Print state
The third node implements a service communicating according to goalTally.srv. At a frequency set in the launch file, it reads the goal coordinates, and the current position and velocities of the robot. From these, it calculates the distance between the robot and the goal, and the average of the velocities in the x and y directions (it is assumed that this is what is meant by "average speed" in the assignment). These are then printed to the terminal. For legibility, the numbers are rounded and the screen cleaned at each update tick. 

## The launch file
Both the provided and here developed nodes can be launched simultaneously using assignment2.launch, which consists of three main parts. The first the inclusion of sim_w1.launch, which launches Gazebo and Rviz, and deals with the setup of the robot and the environment. The second launches the provided parts of the assignment_2_2022 package. Neither of these two parts have been changed. The third portion deals with the three added nodes. They are all launched in new terminal windows, and set to output to screen rather than log. The frequency parameter which desides how often the Print state node prints the state, is also set here. 

## Message, service and action files
PosVel.msg, goalTally.srv and Planning.action each define one method of communication between the nodes. 

## Known bugs
The package has not been subjected to rigorous testing, and it should be assumed that it contains bugs other than the ones described here. All testing and development has been done in one environment, but all bugs which have been encountered during development are either removed or described here. 
 - If the user provides a goal which is not reachable, either because it lies outside the constrained area in which the robot moves, or because it lies within one of the constraints, the robots inability to reach the goal is not properly communicated back to the user. The provided controller does not allow the robot to crash, but the user interface developed here does not attempt to deal with this possibility. It is up to the user to observe that a goal is not reachable, and to take appropriate action. This could mean cancelling the goal, or providing a new one, both of which are possible. 
 - The user input node will crash if the user attempts to cancel a goal while there is no currently active goal. The node can be manually relaunched, and the other nodes appear to be unaffected. Implementing an acceptance test based on a boolean current_goal_exists-variable would be a good solution. Further QOL improvements dealing with other kinds of undesireable input are also possible to implement here. 

## Potential improvements
 - There is no visualisation in Rviz or Gazebo of the goal or information provided about the pathing algorithm. This would be a natural extention to the current features, and if one wanted to implement more complex behaviour (e.g. multiple simultaneous targets) it would be very useful. 
 - The user input interface is very simple, and if the user inputs bad data it breaks. This goes beyond solving the bug described above, making the program more user friendly. 
 - More thorough testing, either to ensure the quality of the package or as part of further development would likely reveal other weaknesses, and even if not, more extensive documentation of which conditions the package works well under would be an improvement in itself. 

# Installing and running the package
The package runs on ROS noetic. The new terminal windows in which the nodes are launched, are using the xterm library, which must be installed. This can be done using *apt-get install xterm -y*. Since both the robot_description and the assignment_2_2022 packages are included in this repo, it can be cloned as a whole. The package has already been built using *catkin_make*, but this can of course be done locally as well. Launching the packages together can be done using *roslaunch assignment_2_2022 assignment2.launch*, which uses the launch file described above. 

