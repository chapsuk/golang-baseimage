NAME = chapsuk/golang
VERSION ?= develop

.PHONY: alpine_release
alpine_release: BASE_IMAGE=alpine
alpine_release: IMAGE_TAG=$(VERSION)-$(BASE_IMAGE)
alpine_release: build tag_latest push push_latest

.PHONY: debian_release
debian_release: BASE_IMAGE=debian
debian_release: IMAGE_TAG=$(VERSION)-$(BASE_IMAGE)
debian_release: build push

.PHONY: build
build:
	docker build -f ${BASE_IMAGE}/Dockerfile -t ${NAME}:${IMAGE_TAG} .

.PHONY: push
push:
	docker push ${NAME}:${IMAGE_TAG}

.PHONY: tag
tag_latest:
	docker tag ${NAME}:${IMAGE_TAG} ${NAME}:latest
	
.PHONY: push_latest
push_latest:
	docker push ${NAME}:latest
