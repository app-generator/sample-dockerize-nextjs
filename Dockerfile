ARG NODE_VERSION
FROM node:${NODE_VERSION} as builder
USER node
COPY --chown=node:node . /home/node
WORKDIR /home/node
RUN set -ex; \
    npm install; \
    npm run build
EXPOSE 3000
CMD ["npm", "start"]