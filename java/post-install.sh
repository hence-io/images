#!/bin/bash

mkdir /app
mkdir -p $HENCE_APP_DIR/logs

chown -R $HENCE_APP_USER:$HENCE_APP_USER /app/ $HENCE_APP_DIR/logs

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
