# Hence PHP-FPM (Drupal 7)

[![](https://badge.imagelayers.io/hence/php:latest.svg)](https://imagelayers.io/?images=hence/php-drupal7:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is a Drupal 7-tailored extension of our minimal customized PHP-FPM image [hence/php](https://hub.docker.com/r/hence/php/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[php/Dockerfile](https://github.com/hence-io/images/blob/master/php/Dockerfile)

## Features
Builds on the [hence/php](https://hub.docker.com/r/hence/php/) image to provide a minimally-sized, fully functional Drupal PHP environment.

It includes:
* drush
* mariadb-client (for drush sql-* commands)
* PhpMyAdmin

### Default supervised processes:
* s6-svscan (as PID 1)
* php
* php-general-logs (log fifo)
* php-error-logs (log fifo)
* php-slow-query-logs (log fifo)

## Available conf environment variables [defaults]
```bash
MYSQL_HOST [] Set to the name of your linked mysql container to enable PhpMyAdmin
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
