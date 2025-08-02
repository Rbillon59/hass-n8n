#!/bin/bash
. /app/n8n-exports.sh

envsubst '$NGINX_ALLOWED_IP $N8N_PATH' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
/usr/sbin/nginx -g "daemon off;"