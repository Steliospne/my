#!/usr/bin/env python3

import rospy
import math
import RPi.GPIO as GPIO
from std_msgs.msg import UInt16

class odometry():

	def __init__(self, left_enc, right_enc, rw): 
		
		self.rw = rw
		self.left_enc = left_enc
		self.right_enc = right_enc
		self.last_counter_r = 0
		self.last_counter_l = 0

		GPIO.setwarnings(False)
		GPIO.setmode(GPIO.BCM)
		GPIO.setup(self.pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
		
		publish_encoder_data_freq = rospy.get_param("~publish_encoder_data_freq", 100.0)
		rospy.Timer(rospy.Duration(1.0/publish_encoder_data_freq), self.step)
		
		self.data_pub = rospy.Publisher('/encoder_data', UInt16, queue_size=100)
		
		self.meters_per_tick_right = (2 * math.pi * self.right_enc.radius) / (right_enc.ticks_p_revol)
		self.meters_per_tick_left = (2 * math.pi * self.left_enc.radius) / (left_enc.ticks_p_revol)
		

	def step(self):
		delta_ticks_r = (self.right_enc.counter - self.last_counter_r)
		delta_ticks_l = (self.left_enc.counter - self.last_counter_l)

		self.last_counter_r = self.right_enc.counter
		self.last_counter_l = self.left_enc.counter

		dl = self.meters_per_tick_left * delta_ticks_l
		dr = self.meters_per_tick_right * delta_ticks_r
		d = (dr + dl) / 2

		x_dt = d * math.cos(self.theta)
		y_dt = d * math.sin(self.theta)
		theta_dt = (dr - dl) / 2 * self.rw
		self.x = self.x + x_dt
		self.y = self.y + y_dt
		self.theta = self.theta + theta_dt

		return self.x, self.y, self.theta

	def resetPose(self):
		self.x = 0
		self.y = 0
		self.theta = 0
    
	def getPose(self):
		return self.x, self.y, self.theta


if __name__ == "__main__":
	rospy.init_node('encoder')

	rospy.spin()