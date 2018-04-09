FROM golang:1.10.1-alpine3.7

RUN apk add --no-cache --update git make ca-certificates curl   \
    && go get -u github.com/golang/dep/cmd/dep                  \
    && go get -u gopkg.in/alecthomas/gometalinter.v2            \
    && cp /go/bin/gometalinter.v2 /go/bin/gometalinter          \
    && gometalinter --install
