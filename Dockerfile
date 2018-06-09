FROM golang:1.10.3-alpine3.7

RUN apk add --no-cache git make ca-certificates curl gcc musl-dev                    \
    && curl -sfL https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
    && go get -u github.com/golangci/golangci-lint/cmd/golangci-lint                 \
    && go get -u gopkg.in/alecthomas/gometalinter.v2                                 \
    && cp /go/bin/gometalinter.v2 /go/bin/gometalinter                               \
    && gometalinter --install
