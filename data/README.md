# Hence Data

[![](https://badge.imagelayers.io/hence/data:latest.svg)](https://imagelayers.io/?images=hence/data:latest 'Get your own badge on imagelayers.io')

This is our minimal customized Data image based on [alpine:3.2](https://registry.hub.docker.com/_/alpine/).

It's sole purpose is to mount persistent data for other containers to access using the `--volumes-from` RUN command.

## Supported tags and respective `Dockerfile` links
* `latest`&nbsp;&nbsp;[data/Dockerfile](https://github.com/hence-io/images/blob/master/data/Dockerfile)

## Usage
Mount your desired data as a volume to `/data` in the container

## Why not busybox?
Busybox is the standard goto for data-only containers, and is smaller that alpine linux (2MB vs 5MB).  The reason for choosing alpine linux is twofold:

* We're already using it for our base image, so we get it 'for free' as far as filesystem usage is concerned.  Using busybox would actually take up more space (a whopping 2MB :P )
* Alpine is a fuller-featured distro.  If, for any reason down the road, we need to perform any specialized one-off tasks in the container, we could easily accomplish almost anything in alpine, and have it's full-featured package manager `apk` at our disposal.

## Authors
* [Clint Beacock](https://github.com/clintbeacock)

## License
MIT

## Copyright
Copyright (c) 2015 [Therefore Interactive](http://therefore.ca)
