FROM ros:humble

# Install turtlesim
RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    && rm -rf /var/lib/apt/lists/*

# Source ROS2 automatically
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

WORKDIR /ros2_ws

# Run turtlesim on startup
CMD ["bash", "-c", "source /opt/ros/humble/setup.bash && ros2 run turtlesim turtlesim_node"]
