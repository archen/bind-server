# Basic BIND Server in Docker

## Running it

Change `[192.168.1.2]` to the IP of the interface that you want the service to listen on:

`docker run -d --hostname ns1 -p [192.168.1.2]:53:53/udp --name bind archen/bind-server:latest`

Test that the server works by running:

`host www.google.com [192.168.1.2]`

## Configuration

All of the configuration can be found in the container at `/etc/bind`. To edit the files locally on the container's host, invoke the container with:

```
mkdir bind-config
cd bind-config
docker run -d --hostname ns1 -p [192.168.1.2]:53:53/udp --name bind -v $(pwd):/etc/bind archen/bind-server:latest
```

## Persistence

To use the container's last saved state, simply use:

`docker restart bind`
