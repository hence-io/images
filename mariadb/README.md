# Hence MariaDB

[![](https://badge.imagelayers.io/hence/mariadb:latest.svg)](https://imagelayers.io/?images=hence/mariadb:latest 'Get your own badge on imagelayers.io')

This is our minimal customized MariaDB image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[mariadb/Dockerfile](https://github.com/hence-io/images/blob/master/mariadb/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional MariaDB environment.

It includes both the mariadb server and client, and a sensible configuration to begin with.  Most my.conf variables can be modified at runtime through environment variables, or a custom conf file can me mounted as a volume.

Data can also be volume-mounted for easy persistence

### Default supervised processes:
* s6-svscan (as PID 1)
* mysqld
* mysql-error-logs (log fifo)
* mysql-error-logs (log fifo)
* mysql-slow-query-logs (log fifo)

## Available mysql environment variables
```bash
ENV MARIADB_USER [root] (recommend that you change this public deployment)
ENV MARIADB_PASSWORD [**empty**] (recommend that you change this public deployment)
ENV MARIADB_DATABASE [**empty**]
```

## Available conf environment variables [defaults]
```bash
ENV MARIADB_MAX_CONNECTIONS 100
ENV MARIADB_CONNECT_TIMEOUT 5
ENV MARIADB_WAIT_TIMEOUT 600
ENV MARIADB_MAX_ALLOWED_PACKET 16M
ENV MARIADB_THREAD_CACHE_SIZE 128
ENV MARIADB_SORT_BUFFER_SIZE 4M
ENV MARIADB_BULK_INSERT_BUFFER_SIZE 16M
ENV MARIADB_TMP_TABLE_SIZE 32M
ENV MARIADB_MAX_HEAP_TABLE_SIZE 32M
ENV MARIADB_MYISAM_RECOVER BACKUP
ENV MARIADB_KEY_BUFFER_SIZE 128M
ENV MARIADB_OPEN_FILES_LIMIT 2000
ENV MARIADB_TABLE_OPEN_CACHE 400
ENV MARIADB_MYISAM_SORT_BUFFER_SIZE 512M
ENV MARIADB_CONCURRENT_INSERT 2
ENV MARIADB_READ_BUFFER_SIZE 2M
ENV MARIADB_READ_RND_BUFFER_SIZE 1M
ENV MARIADB_QUERY_CACHE_LIMIT 128K
ENV MARIADB_QUERY_CACHE_SIZE 64M
ENV MARIADB_QUERY_CACHE_TYPE ON
ENV MARIADB_LOG_WARNINGS 2
ENV MARIADB_SLOW_QUERY_LOG 0
ENV MARIADB_LONG_QUERY_TIME 10
ENV MARIADB_LOG_SLOW_RATE_LIMIT 50
ENV MARIADB_LOG_SLOW_VERBOSITY query_plan
ENV MARIADB_INNODB_BUFFER_POOL_SIZE 256M
ENV MARIADB_LOG_BUFFER_SIZE 8M
ENV MARIADB_FILE_PER_TABLE 1
ENV MARIADB_OPEN_FILES 400
ENV MARIADB_IO_CAPACITY 400
ENV MARIADB_FLUSH_METHOD O_DIRECT
ENV MARIADB_MAX_ALLOWED_PACKE 16M
ENV MARIADB_KEY_BUFFER 16M
ENV MARIADB_DEFAULT_CHARACTER_SET utf8
ENV MARIADB_CHARACTER_SET_SERVER utf8
ENV MARIADB_COLLATION_SERVER utf8_general_ci
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
