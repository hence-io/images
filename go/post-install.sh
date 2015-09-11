#!/bin/bash
mkdir -p $GOPATH/src $GOPATH/bin && chmod -R 777 $GOPATH
mkdir -p $HENCE_APP_DIR/logs
mkdir -p /app

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
ln -s /app $GOPATH/src/app

# Log to stdout
ln -sf /dev/stdout $HENCE_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $HENCE_APP_VOL_PREFIX/logs/error.log
