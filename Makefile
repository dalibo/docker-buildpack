all: alpine rockylinux8 centos8 centos7 centos6 bookworm bullseye buster stretch jessie

.PHONY: centos6
alpine centos8 centos7 centos6 bookworm bullseye buster rockylinux8 stretch jessie:
	docker pull $$(grep --max-count 1 --only-matching --perl-regexp '^FROM \K.+' Dockerfile.$@)
	docker build \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack:$*
