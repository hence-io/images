#! /bin/bash

docker build --no-cache -t hence/base:3.2 .
docker build --no-cache -t hence/base:3.2-onbuild ./onbuild/
