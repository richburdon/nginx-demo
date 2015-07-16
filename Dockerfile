# http://anandmanisankar.com/posts/docker-container-nginx-node-redis-example/

# Set nginx base image.
FROM nginx

# Copy config.
#COPY nginx.conf /etc/nginx/nginx.conf
#COPY conf/prod /etc/nginx/sites-enabled/alienlabs.io
COPY conf/prod /etc/nginx/nginx.conf

