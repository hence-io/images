# Hence Varnish

[![](https://badge.imagelayers.io/hence/varnish:latest.svg)](https://imagelayers.io/?images=hence/varnish:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized Varnish image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[varnish/Dockerfile](https://github.com/hence-io/images/blob/master/varnish/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional varnish server.

This image includes some configuration presets for various applications:

* `drupal7`: Search api preset for drupal 7 site
* Others will be added in time

Use a preset by passing `-e VARNISH_CONFIG_PRESET=[name]` to docker run.

In addition to that, you can provide your own default.vcl by mounting it at `$HENCE_APP_VOL_PREFIX/conf`

### Default supervised processes:
* s6-svscan (as PID 1)
* varnish
* varnish-general-logs (log fifo)
* varnish-error-logs (log fifo)

## Available varnish environment variables [defaults]
```bash
VARNISH_PORT [80]
VARNISH_BACKEND_IP [172.17.42.1]
VARNISH_BACKEND_PORT [80]
VARNISH_STORAGE_AMOUNT [100m]
VARNISH_SESS_TIMEOUT [20]
VARNISH_CONSOLE_PORT [2000]
VARNISH_CONSOLE_SECRET [changeme]
VARNISH_CONFIG_PRESET [default]
VARNISH_FIRST_BYTE_TIMEOUT [60s]
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
