# Golang build image

Golang build image with tools for build and check go programs.

```bash
> docker pull chapsuk/golang-baseimage
```

## Contains

* git
* make
* curl
* dep
* gcc
* musl-dev
* golangci-lint

## Versions

* `1.10.3` - based on `golang:1.10.3-alpine3.7` removed `gometalinter`
* `1.10.2.2` - added `golangci-lint`
* `1.10.2.1` - added `gcc` and `musl-dev`
* `1.10.2` - based on `golang:1.10.2-alpine3.7`
* `1.10.1` - based on `golang:1.10.1-alpine3.7`, gometalinter install
* `1.10` - based on `golang:1.10-alpine`, gometalinetr.v2 without linters
