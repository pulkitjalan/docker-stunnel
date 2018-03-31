FROM debian:jessie-slim

MAINTAINER Pulkit Jalan "<pulkit1990@gmail.com>"

RUN apt-get update && \
    apt-get install -y stunnel4

ENTRYPOINT ["/usr/bin/stunnel"]