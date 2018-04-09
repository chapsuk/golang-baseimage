# Golang build image

Golang build image with tools for build and check go programs.

## Contains

* git
* make
* curl
* dep
* gometalinter with linters (`gometalinter --install`)

## Versions

* `1.10.1` - based on `go1.10.1-alpine3.7`, gometalinter install
* `1.10` - based on `go1.10-alpine`, gometalinetr.v2 without linters
