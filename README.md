# ROS2 Learning Environment

Docker-based ROS2 learning setup for exploring ROS2 fundamentals with future Webots integration.

## Prerequisites

- Docker & Docker Compose
- X11 forwarding capability (for GUI)

## Quick Start

```bash
# Clone the repository
git clone <your-repo-url>
cd <your-repo-name>

# Make scripts executable
chmod +x *.sh

# Build Docker images (first time only)
./build.sh

# Start containers
./start.sh

# Explore ROS2
docker exec -it explorer bash
