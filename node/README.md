# Hence Node

[![](https://badge.imagelayers.io/hence/node:latest.svg)](https://imagelayers.io/?images=hence/node:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized NodeJS (node) image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[node/Dockerfile](https://github.com/hence-io/images/blob/master/node/Dockerfile)
* `latest-onbuild`&nbsp;&nbsp;[node/onbuild/Dockerfile](https://github.com/hence-io/images/blob/master/node/onbuild/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional NodeJS environment.

### Default supervised processes:
* s6-svscan (as PID 1)
* node-general-logs (log fifo)
* node-error-logs (log fifo)

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
