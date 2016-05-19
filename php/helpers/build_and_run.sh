#! /bin/bash

docker build -t hence/php .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 9000:9000 -e PHP_PM_MAX_REQUESTS=500 --name php hence/php
