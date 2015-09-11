#!/bin/bash
mkdir -p $GOPATH/src $GOPATH/bin
mkdir -p $HENCE_APP_DIR/logs
mkdir -p /app

chmod -R 775 $GOPATH /app
chown -R $HENCE_APP_USER:$HENCE_APP_USER \
  /app \
  $GOPATH || true

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
ln -s /app $GOPATH/src/app

# Log to stdout
ln -sf /dev/stdout $HENCE_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $HENCE_APP_VOL_PREFIX/logs/error.log
