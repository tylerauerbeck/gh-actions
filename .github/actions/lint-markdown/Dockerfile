FROM node:lts-slim

RUN npm install -g remark-cli remark-preset-lint-recommended 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

