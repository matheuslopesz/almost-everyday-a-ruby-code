FROM ruby:3.2.1-alpine3.17

RUN apk add --no-cache --update \
    alpine-sdk

COPY . /app
WORKDIR /app

RUN make ruby_dependencies