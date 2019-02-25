FROM node:10.15.0

ENV NODE_ENV dev

ENV CONTAINER_PATH /var/www/docker-vue

WORKDIR $CONTAINER_PATH

COPY package*.json ./

RUN npm config set unsafe-perm true

RUN npm install

EXPOSE 8080

#CMD npm run serve
CMD npm_config_unsafe_perm=true vue-cli-service serve
