FROM ros:humble

# Install turtlesim and useful tools
RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    ros-humble-rqt* \
    python3-pip \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages for later
RUN pip3 install matplotlib numpy

# Set up the workspace
WORKDIR /ros2_ws

# Source ROS2 automatically
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

CMD ["bash"]
