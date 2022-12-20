all: alpine rockylinux8 centos7 centos6 bookworm bullseye buster stretch jessie

.PHONY: centos6
alpine centos7 centos6 bookworm bullseye buster rockylinux9 rockylinux8 stretch jessie:
	docker build --pull \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack:$*
