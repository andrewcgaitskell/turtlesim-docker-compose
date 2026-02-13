#!/bin/bash
set -e

# Source ROS2
source /opt/ros/humble/setup.bash

# Start turtlesim and teleop in a tmux session
tmux new-session -d -s turtlesim "ros2 run turtlesim turtlesim_node"
tmux split-window -h -t turtlesim "sleep 2 && ros2 run turtlesim turtle_teleop_key"
tmux select-pane -t 0

echo "🐢 Turtlesim is running!"
echo "📝 Control the turtle with arrow keys in the right pane"
echo "💡 Use 'tmux attach -t turtlesim' to view/control"
echo ""

# Keep container running and attach to tmux session
tmux attach -t turtlesim
