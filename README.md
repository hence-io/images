# Hence Docker Images

A collection of images used to build Docker containers for the Hence.io project. Runs on [Alpine linux][alpinelinux] and [s6][s6] process management (via [s6-overlay][s6overlay]).

## Containers

The following describes the containers that are available and there inheritance chain:

```
| base
├─ base-onbuild
├─ base-buildpack
|  └─ base-buildpack-onbuild
```

[alpinelinux]: https://www.alpinelinux.org/
[s6]: http://skarnet.org/software/s6/
[s6overlay]: https://github.com/just-containers/s6-overlay
