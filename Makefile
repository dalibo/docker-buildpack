all: centos8 centos7 centos6 bullseye buster stretch

.PHONY: centos6
centos8 centos7 centos6 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.
