#!/bin/bash
cd ~/vaalikoppi

echo "Starting Vaalikoppi..."

# Start database
docker compose up -d db

echo "Waiting for PostgreSQL to be ready..."
sleep 5

# Run migrations
sqlx migrate run

echo "Starting application..."
echo "Access it at: http://localhost:8080"

cargo run