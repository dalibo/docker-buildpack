# [dalibo/buildpack](https://hub.docker.com/r/dalibo/buildpack)

Buildpack image for development of PostgreSQL tooling:

- bzip2, zip, xz
- curl, wget, ca-certificates
- git
- jq
- make
- psql
- retry, wait-for-it.sh
- shellchecks, bats
- ssh
- sudo
- tini
- a system user named `testuser`.

This image is based on official buildpack-deps:*-curl. It adds about 100MB of
softwares.

This image does not include Python, GCC nor PostgreSQL server.


## Tags

- `stretch`.


## retry

The retry script retries the given command 10 times, sleeping from 0 to 10
seconds.

``` console
root@ea6830e87421:/etabli# retry false
+ for s in {0..10}
+ false
+ sleep 0
+ for s in {0..10}
+ false
+ sleep 1
+ for s in {0..10}
+ false
+ sleep 2
...
```
