#!/bin/sh

docker build -t nginx-demo .
docker rm -f nginx-demo
docker run -d -p 8080:80 --link flask-demo:flask --name nginx-demo nginx-demo
echo
IP=$(boot2docker ip)
echo $IP:8080
echo
docker ps
echo
docker logs -f nginx-demo

