#! /bin/bash

docker build -t hence/php .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 9000:9000 -e PHP_MAX_INPUT_VARS=1500 --name php hence/php
