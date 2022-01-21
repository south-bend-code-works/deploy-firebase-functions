FROM node:12-slim
RUN npm install -g firebase-tools tslint
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
