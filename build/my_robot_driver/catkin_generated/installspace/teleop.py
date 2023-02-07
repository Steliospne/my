#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from my_robot_driver.msg import Buttons

class Teleop:
    
    def __init__(self):
        self.autorepeat = rospy.get_param("~autorepeat_rate", 10.0)
        self.button_x = rospy.get_param("~button_x", 2)
        self.button_a = rospy.get_param("~button_a", 0)
        self.button_b = rospy.get_param("~button_b", 1)
        self.linear = rospy.get_param("~axis_linear", 4)
        self.angular = rospy.get_param("~axis_angular", 3)
        self.a_scale = rospy.get_param("~scale_angular", 75.0)
        self.l_scale = rospy.get_param("~scale_linear", 75.0)

        self.vel_pub = rospy.Publisher('/move_command', Twist, queue_size=10)
        self.button_pub = rospy.Publisher('/button_command', Buttons, queue_size=1)
        rospy.Subscriber("/joy", Joy, self.joy_callback)

    def joy_callback(self, joy):
        button = Buttons()
        twist = Twist()
        twist.angular.z = self.a_scale * joy.axes[self.angular]
        twist.linear.x = self.l_scale * joy.axes[self.linear]
        button.reset = joy.buttons[self.button_x]
        button.mode = joy.buttons[self.button_a]
        button.stop = joy.buttons[self.button_b]
        self.vel_pub.publish(twist)
        self.button_pub.publish(button)

if __name__ == '__main__':
    rospy.init_node('teleop_commands')
    teleop = Teleop()
    rospy.spin()
