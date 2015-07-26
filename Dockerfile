# http://anandmanisankar.com/posts/docker-container-nginx-node-redis-example/

# Set nginx base image.
FROM nginx

# Copy config.
COPY conf/prod /etc/nginx/nginx.conf

