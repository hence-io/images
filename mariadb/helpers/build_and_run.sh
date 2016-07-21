#! /bin/bash

docker build -t hence/mariadb .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -e MARIADB_USER=root -e MARIADB_PASSWORD=root -e MARIADB_DATABASE=drupal -p 3307:3306 --name mariadb hence/mariadb
