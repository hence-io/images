#!/bin/bash
mkdir -p $HENCE_APP_DIR/logs
mkdir -p /app

chown -R $HENCE_APP_USER:$HENCE_APP_USER \
  /app || true

# Setup mount point symlinks
chmod -R 775 /app
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs

# Log to stdout
ln -sf /dev/stdout $HENCE_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $HENCE_APP_VOL_PREFIX/logs/error.log
