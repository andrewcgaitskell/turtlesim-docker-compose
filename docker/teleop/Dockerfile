FROM ros:humble

# Install turtlesim (includes teleop)
RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    && rm -rf /var/lib/apt/lists/*

# Source ROS2 automatically
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

WORKDIR /ros2_ws

# Run teleop on startup
CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && ros2 run turtlesim turtle_teleop_key"]
