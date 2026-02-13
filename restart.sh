#!/bin/bash
echo "🔄 Restarting (no rebuild)..."
docker compose down
docker compose up -d
echo "✅ Restarted!"
