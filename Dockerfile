FROM golang:1.10.3-alpine3.7

RUN apk add --no-cache git make ca-certificates curl gcc musl-dev bash openssh-client       \
    && curl -sfL https://raw.githubusercontent.com/golang/dep/master/install.sh | sh        \
    && curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh   \
    && go get github.com/onsi/ginkgo/ginkgo                                                 \
    && go get github.com/onsi/gomega/...

ENV GIT_SSH_COMMAND='ssh -o "StrictHostKeyChecking=no"'
