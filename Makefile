NAME = chapsuk/golang-baseimage
VERSION = 1.10

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