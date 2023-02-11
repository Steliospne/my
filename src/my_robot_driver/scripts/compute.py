#!/usr/bin/env python3

import rospy
import RPi.GPIO as GPIO
import time
import math
from my_robot_driver.msg import Buttons, Odom_data, Motor_info
from my_robot_encoder.encoder import *
from my_robot_odom.odometry import *

#Callback function so that gets the motor state so that we now the direction of the robot. 
def callback_dir(data):
    global last_right_dir, last_left_dir
    if data.state == "fw" :
        last_right_dir = 1
        last_left_dir = 1
    elif data.state == "bw": 
        last_right_dir = -1
        last_left_dir = -1
    elif data.state == "l": 
        last_right_dir = 1
        last_left_dir = -1
    else: 
        last_right_dir = -1
        last_left_dir = 1

#Callback function that if being run when we receive a button press from the joystick.
def callback_button_command(data):
    global mode
    if data.reset == 1: #if we see a X button press we reset the measurements.
        odo.resetPose()
        right_wheel_enc.reset()
        left_wheel_enc.reset()
    if data.debug == 1 and mode == 'normal': #if we see an A button press we cycle throw modes.
        mode = 'debug'
    elif data.debug == 1 and mode == 'debug':
        mode = 'normal'    

#Callback function that publishes the odometry calculations.
def compute_callback(event=None):
    msg = Odom_data()
    msg.counter_r = right_wheel_enc.counter
    msg.counter_l = left_wheel_enc.counter
    msg.x = x
    msg.y = y
    msg.theta = theta
    msg.d_theta = theta_d
    msg.vel_l = vel_l
    msg.vel_r = vel_r
    data_pub.publish(msg)

if __name__ == "__main__":
    #ROS setup
    rospy.init_node("compute_controler")
    
    
    #Subscriber setup
    rospy.Subscriber("/button_command", Buttons, callback_button_command)
    rospy.Subscriber("/motor_info", Motor_info, callback_dir)

    #Publisher setup and frequency of transmition
    data_pub = rospy.Publisher('/compute_data', Odom_data, queue_size=10)
    publish_encoder_data_freq = rospy.get_param("~publish_encoder_data_freq", 10.0)
    rospy.Timer(rospy.Duration(1.0/publish_encoder_data_freq), compute_callback)

    #Robot parameters
    wheel_radius = 0.0360
    rw = 0.120 #0.125

    #Here we initialize the two encoders
    right_wheel_enc = encoder(17, 40, wheel_radius)
    left_wheel_enc = encoder(27, 40, wheel_radius)
    
    #Here we initialize the odometry class
    odo = odometry(left_wheel_enc, right_wheel_enc, rw)
    
    x = 0
    y = 0
    theta = 0
    vel_l = 0 
    vel_r = 0
    mode = 'normal'
    last_right_dir = 1 
    last_left_dir = 1
    
    try:
        start_time = time.time_ns()
        while not rospy.is_shutdown():
            
            t = time.time_ns()
            dt = t - start_time
            start_time = t
    
            odo.step(last_left_dir, last_right_dir)
            x, y ,theta = odo.getPose()
            vel_l, vel_r = odo.getSpeed()

            #theta_d = (theta - (2 * math.pi * math.floor((theta + math.pi)/(2*math.pi))))
            theta_d = theta * 180/math.pi
            if mode == 'debug':
                print("L/R:, {:.2f}, {:.2f},x:, {:.2f}, y:, {:.2f}, theta:, {:.2f}, VL/VR, {:.2f}, {:.2f}, {:.2f}, {:.2f}".format(left_wheel_enc.counter,right_wheel_enc.counter,x,y,theta_d,vel_l,vel_r,last_left_dir,last_right_dir))
            else: 
                pass
            time.sleep(0.1)

    
    except KeyboardInterrupt:
        pass
