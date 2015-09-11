# Hence MailHog

[![](https://badge.imagelayers.io/hence/mailhog:latest.svg)](https://imagelayers.io/?images=hence/mailhog:latest 'Get your own badge on imagelayers.io')

__*Note:*__  This image is still in BETA, and is subject to change without notice.

This is our minimal customized MailHog image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It uses the [s6-overlay](https://github.com/just-containers/s6-overlay) as a process supervisor and for log rotation.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[mailhog/Dockerfile](https://github.com/hence-io/images/blob/master/mailhog/Dockerfile)

## Features
Builds on the [hence/go](https://registry.hub.docker.com/u/hence/go/) image to provide a minimally-sized, fully functional MailHog Server.

### Exposed ports:
* 1025: Default SMTP server port.
* 8025: Default HTTP server port.

### Default supervised processes:
* s6-svscan (as PID 1)
* mailhog
* mailhog-general-logs (log fifo)
* mailhog-error-logs (log fifo)

## Available mailhog environment variables [defaults]
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
