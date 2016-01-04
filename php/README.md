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
PHP_POST_MAX_SIZE [128M]
PHP_UPLOAD_MAX_FILESIZE [128M]
PHP_MAX_EXECUTION_TIME [180]
PHP_MAX_INPUT_TIME [180]
PHP_MAX_INPUT_VARS [1000]
PHP_DATE_TIMEZONE [UTC]
PHP_REALPATH_CACHE_SIZE [1024k]
PHP_OPCACHE_ENABLE [1]
PHP_OPCACHE_ENABLE_CLI [0]
PHP_OPCACHE_MEMORY_CONSUMPTION [128]
PHP_OPCACHE_INTERNAL_STRINGS_BUFFER [8]
PHP_OPCACHE_MAX_ACCELERATED_FILES [4000]
PHP_OPCACHE_VALIDATE_TIMESTAMPS [1]
PHP_OPCACHE_REVALIDATE_FREQ [60]
PHP_OPCACHE_FAST_SHUTDOWN [1]
PHP_OPCACHE_ENABLE_FILE_OVERRIDE [1]
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
