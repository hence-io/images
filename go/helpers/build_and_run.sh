#! /bin/bash

docker build -t hence/go .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 8000:8000 --name go hence/go
