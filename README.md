# Stunnel Alpine Docker

## Usage

Required ENV vars:

ACCEPT_STRING - local listening ip and port
CONNECT_STRING - Remote connection host and port

```sh
docker run -d \
 --name stunnel-redis \
 -e ACCEPT_STRING=127.0.0.1:6379 \
 -e CONNECT_STRING=10.0.0.123:6379 \
  pulkitjalan/stunnel:latest
```