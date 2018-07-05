NAME = chapsuk/golang
VERSION = develop

.PHONY: release
release: build tag push

.PHONY: build
build:
	docker build -t ${NAME}:${VERSION} .

.PHONY: tag
tag:
	docker tag ${NAME}:${VERSION} ${NAME}:latest

.PHONY: push
push:
	docker push ${NAME}:${VERSION}
	docker push ${NAME}:latest
