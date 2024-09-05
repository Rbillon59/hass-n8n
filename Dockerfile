FROM docker.n8n.io/n8nio/n8n:1.58.0
USER root
RUN apk add --no-cache --update jq bash
WORKDIR /data
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
