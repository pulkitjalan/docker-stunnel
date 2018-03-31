FROM alpine:3.7

MAINTAINER Pulkit Jalan "<pulkit1990@gmail.com>"

RUN apk update && \
    apk add --update stunnel

ENTRYPOINT ["/usr/bin/stunnel"]