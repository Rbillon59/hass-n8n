FROM n8nio/n8n:1.80.3
USER root
RUN apk add --no-cache --update \
    jq \
    bash \
    npm \
    nginx \
    supervisor \
    envsubst
WORKDIR /data
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

# Create directory for nginx runtime files
RUN mkdir -p /run/nginx

COPY export-ingress-variables.sh /app/export-ingress-variables.sh

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
COPY nginx-entrypoint.sh /app/nginx-entrypoint.sh

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY supervisord.conf /etc/supervisord.conf

# Expose ports for both nginx (e.g., 80) and n8n (5678) if needed
EXPOSE 80/tcp
EXPOSE 5678/tcp

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]