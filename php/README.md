# Hence PHP-FPM

[![](https://badge.imagelayers.io/hence/php:latest.svg)](https://imagelayers.io/?images=hence/php:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized PHP-FPM image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[php/Dockerfile](https://github.com/hence-io/images/blob/master/php/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional MariaDB environment.

It includes both the php server and client, and a sensible configuration to begin with.  Most my.conf variables can be modified at runtime through environment variables, or a custom conf file can me mounted as a volume.

Data can also be volume-mounted for easy persistence

### Default supervised processes:
* s6-svscan (as PID 1)
* php
* php-general-logs (log fifo)
* php-error-logs (log fifo)
* php-slow-query-logs (log fifo)

## Available conf environment variables [defaults]
```bash
PHP_MEMORY_LIMIT [512M]
PHP_POST_MAX_SIZE [2G]
PHP_UPLOAD_MAX_FILESIZE [2G]
PHP_MAX_EXECUTION_TIME [3600]
PHP_MAX_INPUT_TIME [3600]
PHP_DATE_TIMEZONE [UTC]
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
