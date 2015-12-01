#!/bin/bash

mkdir -p $HENCE_APP_DIR/conf
mkdir -p $HENCE_APP_DIR/conf.defaults
mkdir -p $HENCE_APP_DIR/html
mkdir -p $HENCE_APP_DIR/html.defaults
mkdir -p $HENCE_APP_DIR/logs

cp -R /etc/nginx/. $HENCE_APP_DIR/conf.defaults
cp -R /etc/html/* $HENCE_APP_DIR/html.defaults

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/conf $HENCE_APP_VOL_PREFIX/conf
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
ln -s $HENCE_APP_DIR/html /app

# Log to stdout
ln -sf /dev/stdout $HENCE_APP_VOL_PREFIX/logs/access.log
ln -sf /dev/stderr $HENCE_APP_VOL_PREFIX/logs/error.log
