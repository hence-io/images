#! /bin/bash
docker build --no-cache -t hence/base ../base/
docker build --no-cache -t hence/base:onbuild ../base/onbuild/
