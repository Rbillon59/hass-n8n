#!/bin/bash

# Playwright test runner with Docker container management
# This script handles starting/stopping the Docker container for testing

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "🐳 Starting Docker container for testing..."

# Function to cleanup Docker container
cleanup() {
    echo "🧹 Cleaning up Docker container..."
    docker stop hass-n8n-test 2>/dev/null || true
    docker rm hass-n8n-test 2>/dev/null || true
    exit
}

# Set trap to cleanup on script exit
trap cleanup EXIT INT TERM

# Check if container is already running
if docker ps | grep -q "hass-n8n-test"; then
    echo "⚠️  Stopping existing container..."
    docker stop hass-n8n-test
    docker rm hass-n8n-test
fi

# Read test configuration files
ADDON_INFO=$(cat "$SCRIPT_DIR/supervisor/addon-info.json")
CONFIG=$(cat "$SCRIPT_DIR/supervisor/config.json")
INFO=$(cat "$SCRIPT_DIR/supervisor/info.json")

# Build the Docker image
echo "🔨 Building Docker image..."
docker build \
    --build-arg NGINX_ALLOWED_IP=all \
    --build-arg N8N_VERSION=1.100.1 \
    --target hass-n8n-end-to-end-test \
    -t hass-n8n-test \
    "$PROJECT_ROOT"

# Start the container in the background
echo "🚀 Starting Docker container..."
docker run \
    --rm \
    --detach \
    --name hass-n8n-test \
    -p 5690:5690 \
    -p 5678:5678 \
    -p 8081:8081 \
    -p 5000:5000 \
    -e ADDON_INFO_FALLBACK="$ADDON_INFO" \
    -e CONFIG_FALLBACK="$CONFIG" \
    -e INFO_FALLBACK="$INFO" \
    -e N8N_PROTOCOL="http" \
    hass-n8n-test

# Wait for the container to be ready
echo "⏳ Waiting for container to be ready..."
max_attempts=60
attempt=0

while [ $attempt -lt $max_attempts ]; do
    if curl -s -o /dev/null -w "%{http_code}" http://localhost:5000 | grep -q "200\|404\|302"; then
        echo "✅ Container is ready!"
        break
    fi
    
    echo "   Attempt $((attempt + 1))/$max_attempts - waiting..."
    sleep 2
    attempt=$((attempt + 1))
done

if [ $attempt -eq $max_attempts ]; then
    echo "❌ Container failed to start within timeout period"
    exit 1
fi

# Run the Playwright tests
echo "🎭 Running Playwright tests..."
cd "$SCRIPT_DIR"

if [ "$1" = "--ui" ]; then
    npx playwright test --ui
elif [ "$1" = "--debug" ]; then
    npx playwright test --debug
elif [ "$1" = "--headed" ]; then
    npx playwright test --headed
else
    npx playwright test
fi

echo "✅ Tests completed!"
