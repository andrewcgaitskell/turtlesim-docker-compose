#!/bin/bash

echo "🚀 Starting ROS2 Turtlesim Docker Environment..."

# Enable X11 forwarding for GUI
echo "🔓 Enabling X11 forwarding..."
xhost +local:docker

# Check if container is already running
if [ "$(docker ps -q -f name=turtlesim_container)" ]; then
    echo "⚠️  Container already running! Stopping it first..."
    docker compose down
fi

# Start the container
echo "🐳 Building and starting Docker container..."
docker compose up -d --build

echo ""
echo "✅ Turtlesim is now running!"
echo ""
echo "📌 Quick Commands:"
echo "   • View logs:        docker compose logs -f"
echo "   • Enter container:  docker exec -it turtlesim_container bash"
echo "   • Control turtle:   docker attach turtlesim_container"
echo "   • Stop:             ./stop.sh"
echo ""
echo "🎮 Use arrow keys to control the turtle!"
echo "   Press Ctrl+C to detach (container keeps running)"
echo ""

# Optionally attach to the container to see turtlesim
read -p "📺 Attach to turtlesim now? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    docker attach turtlesim_container
fi
