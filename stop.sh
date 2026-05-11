#!/bin/bash
cd ~/vaalikoppi

echo "Stopping Vaalikoppi..."

# Stop Docker services
docker compose down

# Stop any running cargo process related to the app
pkill -f "cargo run"

echo "Vaalikoppi stopped."