# [dalibo/buildpack](https://hub.docker.com/r/dalibo/buildpack)

Buildpack image for development of PostgreSQL tooling:

- bzip2, zip, xz
- curl, wget, ca-certificates
- git
- jq
- make
- psql
- retry, wait-for-it.sh
- shellchecks
- ssh
- sudo
- tini
- a system user named `testuser`.

This image does not include GCC nor PostgreSQL server.


## Debian specificities

Debian images are based on official buildpack-deps:*-curl. They includes the
following extra tools:

- bats

Also, Debian images does not includes Python.


## Tags

- `alpine`.
- `bookworm`.
- `bullseye`.
- `buster`.
- `centos6`.
- `centos7`.
- `jessie`.
- `rockylinux8`
- `stretch`.


## retry

The retry script retries the given command 10 times, sleeping from 0 to 10
seconds.

``` console
root@ea6830e87421:/etabli# retry false bla bla
+ for s in {0..10}
+ false bla bla
+ sleep 0
+ for s in {0..10}
+ false bla bla
+ sleep 1
+ for s in {0..10}
+ false bla bla
+ sleep 2
...
```
