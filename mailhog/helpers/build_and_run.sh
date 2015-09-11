#! /bin/bash

docker build -t hence/mailhog .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 1025:1025 -p 8025:8025 --name mailhog hence/mailhog
