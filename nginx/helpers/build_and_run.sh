#! /bin/bash

docker build -t hence/nginx .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
# docker run --rm -it -p 80:80 --name nginx hence/nginx
docker run --rm -it -p 80:80 -v /hence/projects/drupal/public:/app --name nginx hence/nginx
# docker run --rm -it -e CONFIG_PRESET=php -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e CONFIG_PRESET=drupal7 -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e CONFIG_PRESET=angular -p 80:80 --name nginx hence/nginx
# docker run --rm -it -e CONFIG_PRESET=nodejs -p 80:80 --name nginx hence/nginx
