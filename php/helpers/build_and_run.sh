#! /bin/bash

docker build -t hence/php .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 9000:9000 --name php hence/php
