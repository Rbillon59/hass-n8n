#!/bin/bash

# build the image
docker build \
    --build-arg NGINX_ALLOWED_IP=all \
    -t hass-n8n \
    .

# remove existing container
docker rm -f hass-n8n

# run the container
docker run \
    -p 5690:5690 \
    -p 5678:5678 \
    -p 8081:8081 \
    --name hass-n8n \
    hass-n8n 