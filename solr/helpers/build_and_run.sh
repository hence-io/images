#! /bin/bash

docker build -t hence/solr .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
# docker run --rm -it -p 8983:8983 --name solr hence/solr
docker run --rm -it -e CONFIG_PRESET=drupal/search_api/5.x -e CONFIG_PRESET_PATH=drupal -p 8983:8983 --name solr hence/solr
