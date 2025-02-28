FROM n8nio/n8n:1.81.2
USER root
RUN apk add --no-cache --update jq bash npm
WORKDIR /data
COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["bash", "/tmp/docker-entrypoint.sh"]
EXPOSE 5678/tcp
