#
# Dockerfile
#
FROM mkovac/runit-buster:latest
LABEL MAINTAINER="matej.kovac@gmail.com"

# files and scripts needed to build the image
#
COPY build /root/build

ARG CACHE_DATE=1970-01-01
RUN run-parts --report --exit-on-error /root/build/scripts && \
  rm -rfv /root/build

EXPOSE 3128

VOLUME ["/etc/squid", "/var/log/squid", "/var/spool/squid"]

CMD ["/usr/bin/runsvdir", "-P", "/etc/runit/runsvdir/default"]
