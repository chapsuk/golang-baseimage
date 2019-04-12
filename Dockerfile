FROM golang:1.12.3-alpine3.9

RUN apk add --no-cache git make ca-certificates curl gcc musl-dev bash openssh-client       \
    && curl -sfL https://raw.githubusercontent.com/golang/dep/master/install.sh | sh        \
    && curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh   \
    && go get github.com/onsi/ginkgo/ginkgo                                                 \
    && go get github.com/onsi/gomega/...

# install dockerize
RUN DOCKERIZE_URL="https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/dockerize-latest.tar.gz" \
  && curl --silent --show-error --location --fail --retry 3 --output /tmp/dockerize-linux-amd64.tar.gz $DOCKERIZE_URL \
  && tar -C /usr/local/bin -xzvf /tmp/dockerize-linux-amd64.tar.gz \
  && rm -rf /tmp/dockerize-linux-amd64.tar.gz \
  && dockerize --version

ENV GIT_SSH_COMMAND='ssh -o "StrictHostKeyChecking=no"'
