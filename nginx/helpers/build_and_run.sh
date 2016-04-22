#! /bin/bash

docker build -t hence/nginx .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
# docker run --rm -it -p 80:80 --name nginx hence/nginx
# docker run --rm -it -p 80:80 -v /hence/projects/drupal/public:/app --name nginx hence/nginx
docker run --rm -it -e NGINX_STATUS_ENABLE=1 --name nginx hence/nginx
# docker run --rm -it -v /etc/ssl:/etc/ssl -e NGINX_CONFIG_PRESET=nodejs -e NGINX_SSL_CERT_FILE=ssl-cert-snakeoil.pem -e NGINX_SSL_CERT_KEY_FILE=ssl-cert-snakeoil.key -e NGINX_SSL_ENABLE=1 -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e NGINX_HTPASSWD_ENABLE=1 -e NGINX_HTPASSWD_USER=clint -e NGINX_HTPASSWD_PASSWORD=beacock -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e NGINX_CONFIG_PRESET=angular -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e NGINX_CONFIG_PRESET=nodejs -p 80:80 --name nginx hence/nginx
