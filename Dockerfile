FROM node:16-alpine
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev
RUN sudo chmod -R 777 /usr/local/lib/node_modules/
WORKDIR /opt/

WORKDIR /opt/app
COPY ./ .

EXPOSE 1337
