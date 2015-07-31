#!/bin/bash

mkdir -p $HENCE_APP_DIR/data
mkdir -p $HENCE_APP_DIR/logs

# Setup mount point symlinks
ln -s /var/lib/memcached $HENCE_APP_DIR/data
ln -s $HENCE_APP_DIR/data $HENCE_APP_VOL_PREFIX/data
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs

# Log to stdout
ln -sf /dev/stdout $HENCE_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $HENCE_APP_VOL_PREFIX/logs/error.log
