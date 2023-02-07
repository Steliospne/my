#!/usr/bin/env python3

from my_robot_encoder.encoderInterrupt import SensorInterruption

class encoder():

    def __init__(self, pin, ticks_p_revol, radius):
        self.counter = 0 
        self.radius = radius
        self.ticks_p_revol = ticks_p_revol

        self.int = SensorInterruption(pin, self.count)

    def count(self, value):
        self.counter += 1

    def reset(self):
        self.counter = 0
	