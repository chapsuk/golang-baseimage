FROM golang:1.10-alpine

RUN apk add --no-cache --update git make ca-certificates curl \
    && go get -u gopkg.in/alecthomas/gometalinter.v2
