# ROS2 Learning Environment

Docker-based ROS2 learning setup for exploring ROS2 fundamentals with future Webots integration.

## Prerequisites

- Docker & Docker Compose
- X11 forwarding capability (for GUI)

## Quick Start

# Clone the repository
git clone https://github.com/andrewcgaitskell/turtlesim-docker-compose.git
cd turtlesim-docker-compose

# Build Docker images (first time only)
source build.sh

# Start containers
source start.sh

# Explore ROS2
docker exec -it explorer bash
