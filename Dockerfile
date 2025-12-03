FROM node:20.19.6-slim
RUN npm install -g firebase-tools@13.9.0
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
