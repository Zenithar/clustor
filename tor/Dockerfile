FROM alpine:edge
MAINTAINER Thibault NORMAND <me@zenithar.org>

RUN apk add --update musl \
    && apk add tor --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

ADD torrc /etc/tor/

VOLUME "/var/lib/tor"
EXPOSE 9050

USER "tor"
CMD ["tor","-f","/etc/tor/torrc"]