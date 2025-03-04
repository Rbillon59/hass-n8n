FROM n8nio/n8n:1.80.3
USER root
RUN apk add --no-cache --update \
    jq \
    bash \
    npm \
    curl \
    nginx \
    supervisor
WORKDIR /data
COPY n8n-entrypoint.sh /app/n8n-entrypoint.sh

# Create directory for nginx runtime files
RUN mkdir -p /run/nginx

COPY n8n-entrypoint.sh /app/n8n-entrypoint.sh
COPY nginx-entrypoint.sh /app/nginx-entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]