#!/bin/bash
echo "🚀 Starting ROS2 Learning Environment..."
xhost +local:docker 2>/dev/null
docker compose up -d
echo ""
echo "✅ Running! Three containers:"
echo "   • turtlesim_node (the 'robot')"
echo "   • turtle_teleop (controller)"
echo "   • explorer (for you to experiment)"
echo ""
echo "🔍 Explore ROS2:"
echo "   docker exec -it explorer bash"
echo ""
echo "🎮 Control turtle:"
echo "   docker attach turtle_teleop"
echo ""
