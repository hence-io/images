#! /bin/bash

docker build -t hence/node .
docker build -t hence/node:onbuild ./onbuild

docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 3000:3000 --name node hence/node
