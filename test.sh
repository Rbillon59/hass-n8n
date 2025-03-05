#!/bin/bash

docker build \
    --build-arg NGINX_ALLOWED_IP=all \
    -t hass-n8n \
    .

docker run \
    -p 8080:8080 \
    -p 8081:8081 \
    hass-n8n \
    --name hass-n8n