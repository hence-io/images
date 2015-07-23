#! /bin/bash

docker build -t hence/mariadb .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -e MARIADB_USER=admin -e MARIADB_PASSWORD=password -e MARIADB_DATABASE=drupal -p 3306:3306 --name mariadb hence/mariadb
