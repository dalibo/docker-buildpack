all: centos8 bullseye buster stretch

centos8 bullseye buster stretch:
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.
