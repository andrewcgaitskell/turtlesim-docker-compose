#!/bin/bash
echo "🔨 Building ROS2 Docker images..."
echo ""
docker compose build
echo ""
echo "✅ Build complete!"
echo ""
echo "Run './start.sh' to start the containers"
