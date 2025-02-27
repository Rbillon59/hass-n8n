FROM n8nio/n8n:1.81.0
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

COPY export-ingress-variables.sh /app/export-ingress-variables.sh

COPY n8n-entrypoint.sh /app/n8n-entrypoint.sh
COPY nginx-entrypoint.sh /app/nginx-entrypoint.sh

COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

# Expose ports for both nginx (e.g., 80) and n8n (5678) if needed
EXPOSE 80/tcp
EXPOSE 5678/tcp

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]