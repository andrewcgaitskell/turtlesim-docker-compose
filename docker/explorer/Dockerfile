FROM ros:humble

# Install useful tools
RUN apt-get update && apt-get install -y \
    ros-humble-rqt-graph \
    ros-humble-rqt-plot \
    python3-pip \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Source ROS2 automatically
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
RUN echo "export ROS_DOMAIN_ID=42" >> ~/.bashrc

WORKDIR /ros2_ws

# Keep container running
CMD ["bash", "-c", "tail -f /dev/null"]

