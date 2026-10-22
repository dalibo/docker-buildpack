all: alpine rockylinux8 centos7 centos6 bookworm noble jammy

.PHONY: centos6 centos7
alpine centos7 centos6 trixie bookworm noble jammy rockylinux10 rockylinux9 rockylinux8:
	docker build --pull \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack:$*
