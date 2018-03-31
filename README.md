# Stunnel Alpine Docker

## Usage

```sh
docker run -d \
 --name stunnel-x \
 -v /local/path/to/{PRIVATE_KEY}:/etc/stunnel/{PRIVATE_KEY} \
 -v /local/path/to/{STUNNEL_CONFIG}:/etc/stunnel/{STUNNEL_CONFIG} \
 -p HOST_PORT:CONTAINER_PORT \
  pulkitjalan/stunnel:latest
```

## Sample Config

```
cert = /etc/stunnel/private.pem
foreground = yes
client = yes
pid = /var/run/stunnel.pid

[redis]
accept = 127.0.0.1:6379
connect = public_ip:6379
```