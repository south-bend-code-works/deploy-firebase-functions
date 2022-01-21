FROM node:12-slim
RUN npm install 
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
