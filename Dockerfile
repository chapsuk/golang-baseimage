FROM golang:1.10.3-alpine3.7

# Install dependencies
RUN apk add --no-cache git make ca-certificates curl gcc musl-dev

# Install dep
RUN curl -sfL https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

# Install golangci-lint
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh

# Install gometalinter
RUN go get -u gopkg.in/alecthomas/gometalinter.v2      \
    && cp /go/bin/gometalinter.v2 /go/bin/gometalinter \
    && gometalinter --install
