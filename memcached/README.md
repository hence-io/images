# Hence Memcached

[![](https://badge.imagelayers.io/hence/memcached:latest.svg)](https://imagelayers.io/?images=hence/memcached:latest 'Get your own badge on imagelayers.io')

This is our minimal customized Memcached image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[memcached/Dockerfile](https://github.com/hence-io/images/blob/master/memcached/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional memcached environment.

### Default supervised processes:
* s6-svscan (as PID 1)
* memcached
* memcached-general-logs (log fifo)
* memcached-error-logs (log fifo)

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
