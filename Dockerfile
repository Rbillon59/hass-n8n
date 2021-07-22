FROM node:14.15-alpine

# Update everything and install needed dependencies
RUN apk add --update graphicsmagick tzdata git su-exec jq

# # Set a custom user to not have n8n run as root
USER root

# Install n8n and the also temporary all the packages
# it needs to build it correctly.
RUN apk --update add --virtual build-dependencies python build-base ca-certificates && \
    npm_config_user=root npm install -g full-icu n8n && \
    apk del build-dependencies

# Install fonts
RUN apk --no-cache add --virtual fonts msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f && \
    apk del fonts && \
    find  /usr/share/fonts/truetype/msttcorefonts/ -type l -exec unlink {} \;

ENV NODE_ICU_DATA /usr/local/lib/node_modules/full-icu

WORKDIR /data

COPY docker-entrypoint.sh /tmp/docker-entrypoint.sh
ENTRYPOINT ["sh", "/tmp/docker-entrypoint.sh"]

EXPOSE 5678/tcp
