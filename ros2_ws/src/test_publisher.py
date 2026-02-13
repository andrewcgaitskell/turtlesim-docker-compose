#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Twist

class TestPublisher(Node):
    def __init__(self):
        super().__init__('test_publisher')
        self.publisher = self.create_publisher(Twist, '/turtle1/cmd_vel', 10)
        self.timer = self.create_timer(1.0, self.publish_message)
        self.get_logger().info('Test Publisher Started!')
    
    def publish_message(self):
        msg = Twist()
        msg.linear.x = 1.0
        msg.angular.z = 0.5
        self.publisher.publish(msg)
        self.get_logger().info('Published: forward + turning')

def main():
    rclpy.init()
    node = TestPublisher()
    rclpy.spin(node)

if __name__ == '__main__':
    main()
