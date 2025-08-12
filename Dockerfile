FROM node:18.18.2-slim
RUN npm install -g firebase-tools@13.9.0
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
