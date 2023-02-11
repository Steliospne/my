#!/usr/bin/env python3

import rospy
import time
from geometry_msgs.msg import Twist
from my_robot_driver.msg import Odom_data ,Buttons

class PIDController:
    def __init__(self, kp, ki, kd, setpoint, constant_speed):
        self.kp = kp
        self.ki = ki
        self.kd = kd
        self.setpoint = setpoint
        self.constant_speed = constant_speed
        self.error_x_sum = 0
        self.error_x_prev = 0
        self.prev_time = time.time()

    def update(self, x):
    	curr_time = time.time()
    	dt = curr_time - self.prev_time
    	error_x = self.setpoint - x
    	self.error_x_sum += error_x * dt
    	error_x_diff = (error_x - self.error_x_prev) / dt
    	u_x = self.kp * error_x + self.ki * self.error_x_sum + self.kd * error_x_diff
    	self.error_x_prev = error_x
    	self.prev_time = curr_time
    	return u_x

class SquareDriver:
    def __init__(self):
        self.mode = 0
        self.pid_x = PIDController(0.1, 0.01, 0.05, 1, 15)
        self.pid_y = PIDController(0.1, 0.01, 0.05, 0, 30)
        self.pid_theta = PIDController(0.5, 0.1, 0.2, 0, 30)
        self.command_pub = rospy.Publisher('/move_command', Twist, queue_size=10)
        self.odom_sub = rospy.Subscriber('/compute_data', Odom_data, self.odom_callback)
        self.mode_sub = rospy.Subscriber('/button_command', Buttons, self.button_callback)

    def button_callback(self,data):
        if data.mode == 1 and self.mode == 0:
            self.mode = 1
            print("PID CONTROL ACTIVE")
        elif data.mode == 1 and self.mode == 1:
            self.mode = 0
            print("PID CONTROL STOPPED")

    def odom_callback(self, msg):
        if self.mode == 0:
            pass
        else:
            x = msg.x
            y = msg.y
            theta = msg.theta
            control_x = self.pid_x.update(x)
            control_y = self.pid_y.update(y)
            control_theta = self.pid_theta.update(theta)
            twist = Twist()
            
            if self.pid_x.error_x_prev >= 0.1:
                twist.linear.x = self.pid_x.constant_speed + control_x
                twist.angular.z = self.pid_x.constant_speed + control_x
            else:
                twist.linear.x = 0
                twist.angular.z = 0
            self.command_pub.publish(twist)

if __name__ == '__main__':
    rospy.init_node('autonomous_node')
    driver = SquareDriver()
    rospy.spin()