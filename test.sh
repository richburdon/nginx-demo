#!/bin/sh

CONF=gen/nginx.conf
IP=$(boot2docker ip)
PORT=5000
echo "SERVER=$IP:$PORT"

# Update conf
sed "s/__SERVER__/$IP:$PORT/g" conf/test > $CONF

# Stop nginx
nginx -s quit &> /dev/null

# Start nginx
set -x
nginx -c ${PWD}/$CONF

# Test
curl localhost:8080
# curl --silent localhost:8080 | head -1

