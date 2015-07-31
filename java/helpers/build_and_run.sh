#! /bin/bash

docker build -t hence/java .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 9000:9000 --name java hence/java
