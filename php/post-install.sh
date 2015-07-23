#!/bin/bash

mkdir /app
mkdir -p $HENCE_APP_DIR/conf
mkdir -p $HENCE_APP_DIR/conf.defaults
mkdir -p $HENCE_APP_DIR/logs

# set up default config
cp -R /etc/php/* $HENCE_APP_DIR/conf.defaults

chown -R $HENCE_APP_USER:$HENCE_APP_USER /app/ $HENCE_APP_DIR/conf $HENCE_APP_DIR/logs

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/conf $HENCE_APP_VOL_PREFIX/conf
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs

# Temp fix for disabling php-fpm caching
# sudo sed -i -e 's/\(opcache\.enable=\)1/\10/g' $HENCE_PREFIX/php/etc/php.ini
