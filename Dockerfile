FROM alpine:latest
MAINTAINER archen.sol@gmail.com

RUN apk --update add bind bind-tools bind-doc
ADD ./config /etc/bind
RUN chown -R root:named /etc/bind
RUN chmod -R 0664 /etc/bind

VOLUME /etc/bind

EXPOSE 53/udp

WORKDIR /etc/bind

ENTRYPOINT ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
