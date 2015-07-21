# Hence Base

[![](https://badge.imagelayers.io/hence/base:latest.svg)](https://imagelayers.io/?images=hence/base:latest 'Get your own badge on imagelayers.io')

This is our minimal customized Alpine Linux base image based on
[alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation in derived images

## Supported tags and respective `Dockerfile` links
* `0.0.1`, `latest` [base/Dockerfile](https://github.com/hence-io/images/blob/master/base/Dockerfile)
* `0.0.1-onbuild` [base/onbuild/Dockerfile](https://github.com/hence-io/images/blob/master/base/onbuild/Dockerfile)
* `0.0.1-buildpack` [base/buildpack/Dockerfile](https://github.com/hence-io/images/blob/master/base/buildpack/Dockerfile)
* `0.0.1-buildpack-onbuild` [base/buildpack/onbuild/Dockerfile](https://github.com/hence-io/images/blob/master/base/buildpack/onbuild/Dockerfile)

## Features
Provides a flexible base for all other [hence](https://registry.hub.docker.com/repos/hence) docker images


### Default supervised processes:
* s6-svscan (as PID 1)
* cron
* s6-fdholderd

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
