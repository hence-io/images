#! /bin/bash

docker build -t hence/php .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -e NR_APP_NAME="Custom App Name" -e NR_INSTALL_SILENT=true -e NR_INSTALL_KEY=0c6d5e110c5259e1320208f5e1efed0348a628bf --name php hence/php
