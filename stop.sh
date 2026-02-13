#!/bin/bash

echo "🛑 Stopping ROS2 Turtlesim Docker Environment..."

# Stop and remove containers
docker compose down

# Disable X11 forwarding
echo "🔒 Disabling X11 forwarding..."
xhost -local:docker

echo "✅ Environment stopped successfully!"

