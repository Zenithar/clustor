FROM alpine:edge
MAINTAINER Thibault NORMAND <me@zenithar.org>

RUN apk add --update musl tzdata \
    && apk add tor --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

ADD torrc /etc/tor/
ADD launch.sh /bin/

VOLUME "/var/lib/tor"
EXPOSE 9050

CMD ["launch.sh"]