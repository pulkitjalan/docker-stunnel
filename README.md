# Stunnel Alpine Docker

### Required ENV vars:

- `ACCEPT_STRING` - local listening ip and port.
- `CONNECT_STRING` - Remote connection host and port.

### Example

```sh
docker run -d \
 --name redis \
 -e ACCEPT_STRING=127.0.0.1:6379 \
 -e CONNECT_STRING=10.0.0.123:6380 \
  pulkitjalan/stunnel:latest
```