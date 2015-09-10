# Hence Solr

[![](https://badge.imagelayers.io/hence/solr:latest.svg)](https://imagelayers.io/?images=hence/solr:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized Solr image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[solr/Dockerfile](https://github.com/hence-io/images/blob/master/solr/Dockerfile)

## Features
Builds on the [hence/java](https://registry.hub.docker.com/u/hence/java/) image to provide a minimally-sized, fully functional solr environment.

This image includes some configuration presets for various applications:

* `drupal/search_api/5.x`: Search api preset for drupal 7 site
* Others will be added in time

Use a preset by passing `-e CONFIG_PRESET=[name]` to docker run.

In addition to that, you can provide your own config files by mounting them at `$HENCE_APP_VOL_PREFIX/conf`

By default, a core will be automatically created for you. The core name can be controlled by altering the `CONFIG_PRESET_PATH` environment variable.

### Default supervised processes:
* s6-svscan (as PID 1)
* solr
* solr-general-logs (log fifo)
* solr-error-logs (log fifo)

## Available solr environment variables [defaults]
```bash
CONFIG_PRESET []
CONFIG_PRESET_PATH [default]
```

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
