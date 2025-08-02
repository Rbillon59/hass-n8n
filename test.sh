#!/bin/bash

# get tests/supervisor/addon-info.json
ADDON_INFO=$(cat tests/supervisor/addon-info.json)

# get tests/supervisor/config.json
CONFIG=$(cat tests/supervisor/config.json)

# get tests/supervisor/info.json
INFO=$(cat tests/supervisor/info.json)

# build the image
docker build \
    --build-arg NGINX_ALLOWED_IP=all \
    --build-arg N8N_VERSION=1.100.1 \
    -t hass-n8n \
    .

# run the container
docker run \
    --rm \
    -p 5690:5690 \
    -p 5678:5678 \
    -p 8081:8081 \
    -e ADDON_INFO_FALLBACK="$ADDON_INFO" \
    -e CONFIG_FALLBACK="$CONFIG" \
    -e INFO_FALLBACK="$INFO" \
    -e N8N_PROTOCOL="http" \
    hass-n8n