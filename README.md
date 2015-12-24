# Basic BIND Server in Docker

## Running it

`docker run -d --hostname ns1 -p [192.168.1.2]:53:53/udp --name bind9 archen/bind-server`