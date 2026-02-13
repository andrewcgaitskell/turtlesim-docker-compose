FROM ros:humble

# Install turtlesim and other useful packages
RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    ros-humble-rqt* \
    tmux \
    && rm -rf /var/lib/apt/lists/*

# Set up the workspace
WORKDIR /ros2_ws

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Source ROS2 automatically
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# Use our custom entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
