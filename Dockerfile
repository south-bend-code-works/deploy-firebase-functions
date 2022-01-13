FROM node:12-slim
WORKDIR /home/node
RUN npm ci && npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
