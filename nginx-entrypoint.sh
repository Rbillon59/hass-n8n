#!/bin/bash
envsubst '$NGINX_ALLOWED_IP' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
/usr/sbin/nginx -g "daemon off;"