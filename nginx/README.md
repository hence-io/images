# Hence Ngnix

[![](https://badge.imagelayers.io/hence/nginx:latest.svg)](https://imagelayers.io/?images=hence/nginx:latest 'Get your own badge on imagelayers.io')

This is our minimal customized Nginx image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[nginx/Dockerfile](https://github.com/hence-io/images/blob/master/nginx/Dockerfile)

## Features
Builds on the [hence/base](https://registry.hub.docker.com/u/hence/base/) image to provide a minimally-sized, fully functional Nginx environment.

This image includes some configuration presets for various applications:

* `php`: Preset to run a basic php app
* `nodejs`: Preset to proxy to a running nodeJS app
* `angular`: Preset to run an angularJS app
* `drupal7`: Preset to run a [Drupal 7](http://drupal.org) app

Use a preset by passing `-e CONFIG_PRESET=[name]` to docker run.

In addition to that we provide different volumes to overwrite the behavior of
Nginx. In order to customize the behavior of Nginx you can inject
configurations into the volume ```/etc/nginx/custom.d```, this directory gets
loaded by the server configuration directly.

### Default supervised processes:
* s6-svscan (as PID 1)
* nginx
* nginx-logs (log fifo)
* nginx-error-logs (log fifo)
* nginx-app-logs (log fifo)
* nginx-app-error-logs (log fifo)

## Available nginx environment variables [defaults]
```bash
CONFIG_PRESET []
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)