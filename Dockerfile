FROM golang:1.10-alpine

RUN apk add --update git make \
    && go get -u gopkg.in/alecthomas/gometalinter.v2
