squid
=====

![Build](https://img.shields.io/docker/build/mkovac/squid.svg) ![Pulls](https://img.shields.io/docker/pulls/mkovac/squid.svg) ![Stars](https://img.shields.io/docker/stars/mkovac/squid.svg)

This [image](https://hub.docker.com/r/mkovac/squid/) is just regularly updated[squid package](https://packages.debian.org/stretch/squid) from Stretch.

Quick Usage
-----------

```
$ docker build https://github.com/multicast/squid  # one...
$ docker pull mkovac/squid                         # ...or the other
$ docker run --rm -ti mkovac/squid
```

Build-time options
------------------

See [parent container](https://github.com/multicast/stretch). No additional options.

Run-time options
----------------

See [parent container](https://github.com/multicast/stretch).

### Environment variables

-	`SQUID_PORT`
	-	port number to listen on. defaults to `3128`.

### Volumes

-	`/etc/squid`
	-	please, make your own changes
-	`/var/log/squid`
	-	if you want logs on host
-	`/var/spool/squid`
	-	the cache content
