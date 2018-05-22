FROM golang:1.10.2-alpine3.7

RUN apk add --no-cache git make ca-certificates curl gcc musl-dev   \
    && go get -u github.com/golang/dep/cmd/dep                               \
    && go get -u gopkg.in/alecthomas/gometalinter.v2                         \
    && cp /go/bin/gometalinter.v2 /go/bin/gometalinter                       \
    && gometalinter --install
