#! /bin/bash

docker build -t hence/varnish .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it --name varnish hence/varnish
# docker run --rm -it -e CONFIG_PRESET=drupal7 --name varnish hence/varnish
