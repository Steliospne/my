#!/usr/bin/env python3

import rospy
import RPi.GPIO as GPIO
from my_driver.motor_driver import MotorDriver
from geometry_msgs.msg import Twist
from my_robot_driver.msg import Buttons, Motor_info

class MotorDriverROSWrapper:
    def __init__(self):
        max_speed = rospy.get_param("~max_speed", 75)
        publish_motor_info_frequency = rospy.get_param("~publish_motor_info_frequency", 10.0)
        
        self.motor = MotorDriver(max_speed=max_speed)
        
        rospy.Subscriber("/move_command", Twist, self.callback_speed_command)
        rospy.Subscriber("/button_command", Buttons, self.callback_button_command)
        self.motor_state_pub = rospy.Publisher("/motor_info", Motor_info, queue_size=10)
        rospy.Timer(rospy.Duration(1.0/publish_motor_info_frequency), self.publish_motor_state)
        self.mode = 1

    def stop(self):
        self.motor.stop()

    def callback_button_command(self, data):
        if data.mode == 1 and self.mode == 1:
            self.mode = 0
            print("Autonomous Mode")
        elif data.mode == 1 and self.mode == 0:
            self.mode = 1
            print("Manual Mode")
        
        if data.stop == 1:
            rospy.signal_shutdown("EMERGENCY STOP!")
    
    def publish_motor_state(self, event=None):
        msg = Motor_info()
        msg.state = self.motor.get_state()
        self.motor_state_pub.publish(msg)

    def callback_speed_command(self, data):
        self.motor.move_command(data.linear.x, data.angular.z, mode=self.mode)

if __name__ == "__main__":
    rospy.init_node("motor_driver")
    motor_driver_wrapper = MotorDriverROSWrapper()
    rospy.on_shutdown(motor_driver_wrapper.stop)
    rospy.loginfo("Motor driver is now started, ready to get commands.")
    rospy.spin()
