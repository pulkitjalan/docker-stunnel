# Stunnel Docker

## Usage

```sh
docker run -d \
 --name stunnel-x \
 -v /local/path/to/{PRIVATE_KEY}:/etc/stunnel/{PRIVATE_KEY} \
 -v /local/path/to/{STUNNEL_CONFIG}:/etc/stunnel/{STUNNEL_CONFIG} \
 -p HOST_PORT:CONTAINER_PORT \
  pulkitjalan/stunnel:latest
```