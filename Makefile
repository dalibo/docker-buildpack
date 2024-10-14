all: alpine rockylinux8 centos7 centos6 bookworm bullseye buster stretch jessie noble jammy

.PHONY: centos6
alpine centos7 centos6 bookworm bullseye buster noble jammy rockylinux9 rockylinux8 stretch jessie:
	docker build --pull \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack:$*
