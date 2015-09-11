# Hence Docker Images

A collection of images used to build Docker containers for the Hence.io project. Runs on [Alpine linux][alpinelinux] and [s6][s6] process management (via [s6-overlay][s6overlay]).

## Containers

The following describes the containers that are available and their inheritance chain:

```
| images root
├─ base
|  ├─ base:onbuild
|  ├─ base:buildpack
|  |  └─ base:buildpack-onbuild
|  |
|  ├─ go
|  |  ├─ go:onbuild
|  |  └─ mailhog
|  |
|  ├─ java
|  |  └─ solr
|  |
|  ├─ mariadb
|  ├─ memcached
|  ├─ nginx
|  |
|  ├─ nodejs
|  |  └─ nodejs:onbuild
|  |
|  ├─ php
|  |  └─ php-drupal7
|  |
|  └─ varnish
|
├─ data
└─ cleanup
```

[alpinelinux]: https://www.alpinelinux.org/
[s6]: http://skarnet.org/software/s6/
[s6overlay]: https://github.com/just-containers/s6-overlay

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
