#!/usr/bin/env python3
import math

class odometry():

	def __init__(self, left_enc, right_enc, rw): 
		
		self.rw = rw
		self.left_enc = left_enc
		self.right_enc = right_enc
		self.last_counter_r = 0
		self.last_counter_l = 0
		self.x = 0
		self.y = 0
		self.theta = 0
		
		
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