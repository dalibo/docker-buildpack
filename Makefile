all: centos8 centos7 bullseye buster stretch

centos8 centos7 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.
