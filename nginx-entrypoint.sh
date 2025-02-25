#!/bin/bash

. /app/export-ingress-variables.sh

envsubst '$INGRESS_PATH' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
/usr/sbin/nginx -g "daemon off;"