FROM n8nio/n8n:1.80.3
USER root

# Install dependencies including nginx and supervisor
RUN apk add --no-cache --update jq bash npm nginx supervisor

# Create directory for nginx runtime files
RUN mkdir -p /run/nginx

# Copy your custom entrypoint and configuration files
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

# Expose ports for both nginx (e.g., 80) and n8n (5678) if needed
EXPOSE 80/tcp
EXPOSE 5678/tcp

# Use supervisord to launch both nginx and n8n
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]