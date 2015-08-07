#!/bin/bash
rm -rf /var/lib/varnish/*

mkdir -p $HENCE_APP_DIR/conf
mkdir -p $HENCE_APP_DIR/data/processes
mkdir -p $HENCE_APP_DIR/conf.defaults
mkdir -p $HENCE_APP_DIR/logs

cp -R /etc/varnish/* $HENCE_APP_DIR/conf.defaults

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/conf $HENCE_APP_VOL_PREFIX/conf
ln -s $HENCE_APP_DIR/data $HENCE_APP_VOL_PREFIX/data
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
