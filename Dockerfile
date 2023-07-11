FROM node:18-alpine
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev
ARG NODE_ENV
ENV NODE_ENV=${NODE_ENV}
ARG NGINX_URL
ENV NGINX_URL=${NGINX_URL}
RUN env

WORKDIR /opt/
COPY package.json package-lock.json ./
RUN if [ "${NODE_ENV}" = "development" ]; then \
  # Actions spécifiques pour l'environnement de développement \
  npm install \
  ; else \
  # Actions spécifiques pour l'environnement de production \
  npm install --only=production \
  ; fi
#RUN npm install

WORKDIR /opt/app
COPY . .
ENV PATH /opt/node_modules/.bin:$PATH
RUN chown -R node:node /opt/app
USER node
RUN ["npm", "run", "build"]
EXPOSE 1337
#CMD ["npm", "run", "develop"]
CMD if [ "${NODE_ENV}" = "development" ]; then \
  npm run develop \
  ; else \
  npm run start \
  ; fi
