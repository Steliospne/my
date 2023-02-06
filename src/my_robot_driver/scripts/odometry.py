#!/usr/bin/env python3

import rospy
import RPi.GPIO as GPIO
from std_msgs.msg import UInt16

class encoder:

	def __init__(self, ID, pin):
		self.ID = ID
		self.count = 0 
		self.last_state = 0
		self.yolo = 0
		self.pin = pin
		GPIO.setwarnings(False)
		GPIO.setmode(GPIO.BCM)
		GPIO.setup(self.pin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
		
		publish_encoder_data_freq = rospy.get_param("~publish_encoder_data_freq", 100.0)
		if self.yolo == 1:
			rospy.Timer(rospy.Duration(1.0/publish_encoder_data_freq), self.calibration)
		else:
			rospy.Timer(rospy.Duration(1.0/publish_encoder_data_freq), self.start)
		
		self.data_pub = rospy.Publisher(f'/encoder{self.ID}_data', UInt16, queue_size=100)

	def calibration(self):
		pass

	def start(self, event=None):
		msg = UInt16()
		if GPIO.input(self.pin) == 1 and self.last_state == 0:
			self.count += 1
			msg.data = self.count
			self.data_pub.publish(msg)
		self.last_state = GPIO.input(self.pin)
	
	
if __name__ == "__main__":
	rospy.init_node('encoder')
	sensor_1 = encoder('1', 17)
	sensor_2 = encoder('2', 27)
	rospy.spin()