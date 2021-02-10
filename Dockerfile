FROM node:6-alpine

COPY . /root/app

RUN apk add --no-cache nasm autoconf automake bash git g++ make python ruby ruby-dev libzip-dev ruby-json libjpeg-turbo-utils ruby-rdoc \
    && gem install bundler \
    && rm -rf /root/app/node_modules \
    && cd /root/app \
    && npm i \
    && bundle install

ENTRYPOINT [ "/bin/bash" ]
