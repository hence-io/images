#! /bin/bash

docker build --no-cache -t hence/base:3.4 .
docker build --no-cache -t hence/base:3.4-onbuild ./onbuild/
