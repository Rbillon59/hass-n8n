ARG N8N_VERSION=0.237.0
FROM n8nio/n8n:${N8N_VERSION}
RUN apk add --no-cache --update jq bash
USER root
WORKDIR /data
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
