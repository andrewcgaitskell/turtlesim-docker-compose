#!/bin/bash
docker compose down
xhost -local:docker 2>/dev/null
echo "✅ Stopped!"

