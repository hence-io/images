# Hence Java

[![](https://badge.imagelayers.io/hence/java:latest.svg)](https://imagelayers.io/?images=hence/java:latest 'Get your own badge on imagelayers.io')

This is our minimal customized Java image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[java/Dockerfile](https://github.com/hence-io/images/blob/master/java/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional MariaDB environment.

It includes openjdk7-jre as a base for running other java applications.  It is meant to be used as a base runtime image for other applications, such as apache solr.

Data can also be volume-mounted for easy persistence

### Default supervised processes:
* s6-svscan (as PID 1)
* java-general-logs (log fifo)
* java-error-logs (log fifo)

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
