FROM ros:humble

RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    ros-humble-rqt-graph \
    python3-pip \
    nano \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /ros2_ws

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

CMD ["bash"]
