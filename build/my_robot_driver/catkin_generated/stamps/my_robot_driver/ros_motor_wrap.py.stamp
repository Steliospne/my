#!/usr/bin/env python3

import rospy
import RPi.GPIO as GPIO
from my_driver.motor_driver import MotorDriver
from geometry_msgs.msg import Twist
from my_robot_driver.msg import Buttons

class MotorDriverROSWrapper:
    def __init__(self):
        max_speed = rospy.get_param("~max_speed", 75)
        #publish_motor_info_frequency = rospy.get_param("~publish_motor_info_frequency", 60.0)
        #GPIO.setwarnings(False)
        #GPIO.setmode(GPIO.BCM)
        #GPIO.setup(self.pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
        
        self.motor = MotorDriver(max_speed=max_speed)
        
        rospy.Subscriber("/move_command", Twist, self.callback_speed_command)
        rospy.Subscriber("/button_command", Buttons, self.callback_button_command)
        #self.motor_status_pub = rospy.Publisher("motor_info", Motor_Info, queue_size=10)
        #rospy.Timer(rospy.Duration(1.0/publish_motor_info_frequency), self.publish_motor_status)

    def stop(self):
        self.motor.stop()

    def callback_button_command(self, data):
        if data.mode == 1:
            pass
        elif data.stop == 1:
            self.stop()
    

    def callback_speed_command(self, data):
        self.motor.move_command(data.linear.x, data.angular.z)

if __name__ == "__main__":
    rospy.init_node("motor_driver")
    motor_driver_wrapper = MotorDriverROSWrapper()
    rospy.on_shutdown(motor_driver_wrapper.stop)
    rospy.loginfo("Motor driver is now started, ready to get commands.")
    rospy.spin()
