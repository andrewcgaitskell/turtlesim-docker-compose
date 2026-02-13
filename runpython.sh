#!/bin/bash
# Quick run script for development

if [ -z "$1" ]; then
    echo "Usage: ./run.sh <script_name.py>"
    echo "Example: ./run.sh test_publisher.py"
    exit 1
fi

docker exec -it explorer bash -c "source /opt/ros/humble/setup.bash && python3 /ros2_ws/src/$1"
