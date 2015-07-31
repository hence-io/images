#! /bin/bash

docker build -t hence/memcached .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 11211:11211 --name memcached hence/memcached
