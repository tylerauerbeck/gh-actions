FROM node:lts-slim

RUN npm install -g markdown-link-check

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

