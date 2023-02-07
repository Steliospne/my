#!/usr/bin/env python3

import RPi.GPIO as GPIO

class SensorInterruption:
    # A class member, common for all the instances of this class
    listOfSensors = []

    def __init__(self, pin, callback):
        self.pin = pin
        self.prevValue = 0
        self.call = callback

        # Setup GPIO for both edge detections
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(pin, GPIO.IN)
        GPIO.add_event_detect(pin, GPIO.BOTH, SensorInterruption.interruption)
        
        # Add sensor to the list of sensors
        SensorInterruption.listOfSensors.append(self)

    def check(self):
        '''
            Check for edge change in the pin
        '''
        tmpValue = GPIO.input(self.pin)
        if (tmpValue != self.prevValue):
            self.call(tmpValue)
            self.prevValue = tmpValue
    
    @staticmethod
    def interruption(pin):
        for sensor in SensorInterruption.listOfSensors:
            sensor.check()