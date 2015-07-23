#! /bin/bash

docker build -t hence/nginx .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 80:80 --name nginx hence/nginx
