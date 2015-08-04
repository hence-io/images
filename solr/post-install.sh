#!/bin/bash

mkdir -p $HENCE_APP_DIR/conf
mkdir -p $HENCE_APP_DIR/data
mkdir -p $HENCE_APP_DIR/conf.defaults/basic/conf
mkdir -p $HENCE_APP_DIR/logs

cp -R /opt/solr/server/solr/configsets/basic_configs/conf/* $HENCE_APP_DIR/conf.defaults/basic/conf/

# Setup mount point symlinks
ln -s $HENCE_APP_DIR/conf $HENCE_APP_VOL_PREFIX/conf
ln -s $HENCE_APP_DIR/data $HENCE_APP_VOL_PREFIX/data
ln -s $HENCE_APP_DIR/logs $HENCE_APP_VOL_PREFIX/logs
