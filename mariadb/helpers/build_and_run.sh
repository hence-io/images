docker build -t hence/mariadb .
docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
docker run --rm -it -p 3306:3306 --name mariadb hence/mariadb
