#!/bin/bash

mkdir -p $HENCE_APP_DIR/conf
mkdir -p $HENCE_APP_DIR/conf.defaults
mkdir -p $HENCE_APP_DIR/data
mkdir -p $HENCE_APP_DIR/logs

cp -R /etc/mysql/* $HENCE_APP_DIR/conf.defaults

cd $HENCE_APP_DIR

# set up logging to stdout
ln -s /dev/stdout logs/mysqld.log

# symlink mount points at root to install dir
ln -s $HENCE_APP_DIR/conf $HENCE_APP_VOL_PREFIX/conf
ln -s $HENCE_APP_DIR/data $HENCE_APP_VOL_PREFIX/data
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
