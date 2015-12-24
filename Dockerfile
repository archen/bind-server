FROM alpine:latest
MAINTAINER archen.sol@gmail.com

RUN apk --update add bind bind-tools bind-doc
ADD ./config /etc/bind
RUN mkdir -p /var/cache/bind
RUN chown -R root:named /etc/bind
RUN chmod -R 0774 /etc/bind
RUN chown -R root:named /var/cache/bind
RUN chmod -R 0774 /var/cache/bind

VOLUME /etc/bind
VOLUME /var/cache/bind

EXPOSE 53/udp

WORKDIR /etc/bind

ENTRYPOINT ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
