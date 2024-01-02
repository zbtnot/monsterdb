FROM alpine:latest
WORKDIR /build
COPY ./.env /build
COPY ./justfile /build
RUN apk add just
