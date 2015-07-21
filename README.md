http://nginx.org/en/docs/beginners_guide.html
https://registry.hub.docker.com/_/nginx/

brew install nginx

To test nginx manually:

nginx -s quit
nginx -c ~/projects/src/experimental/nginx-demo/nginx.conf 

To test the local config:

docker-compose up

