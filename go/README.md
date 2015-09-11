# Hence Go

[![](https://badge.imagelayers.io/hence/go:latest.svg)](https://imagelayers.io/?images=hence/go:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized GoLang (go) image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[go/Dockerfile](https://github.com/hence-io/images/blob/master/go/Dockerfile)
* `latest-onbuild`&nbsp;&nbsp;[go/onbuild/Dockerfile](https://github.com/hence-io/images/blob/master/go/onbuild/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional GoLang environment.

### Default supervised processes:
* s6-svscan (as PID 1)
* go-general-logs (log fifo)
* go-error-logs (log fifo)

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
