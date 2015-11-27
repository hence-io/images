#! /bin/bash

docker build -t hence/php-drupal8 .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 9000:9000 -e PHPMYADMIN_MYSQL_HOST=db --name php-drupal8 hence/php-drupal8
