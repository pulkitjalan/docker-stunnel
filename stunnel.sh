#!/bin/sh

if [ -z ${ACCEPT_STRING} ] || [ -z ${CONNECT_STRING} ]; then
    echo "Must Specifiy ACCEPT_STRING and CONNECT_STRING variable" 1>&2
    echo "In format <host>:<port>" 1>&2
    exit 1
fi

cat << EOF > /etc/stunnel/stunnel.conf
CApath = /etc/ssl/certs
verify = 2
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1
delay = yes
foreground = yes

[client]
client = yes
accept = ${ACCEPT_STRING}
connect = ${CONNECT_STRING}
EOF

exec /usr/bin/stunnel /etc/stunnel/stunnel.conf