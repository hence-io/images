#!/bin/bash

if [ -f $HENCE_APP_DIR/scripts/ctl.sh  ]; then
  $HENCE_APP_DIR/scripts/ctl.sh stop > /dev/null
fi

if [ $HENCE_APP_DIR ]; then
  mkdir -p $HENCE_APP_DIR
fi

if [ $HENCE_APP_VOL_PREFIX ]; then
  mkdir -p $HENCE_APP_VOL_PREFIX
fi

if [ -f "$HENCE_PREFIX/hence-utils.sh" ]; then
  chown $HENCE_APP_USER:$HENCE_APP_USER $HENCE_PREFIX/hence-utils.sh
fi

if [ -f "/tmp/post-install.sh" ]; then
  sh /tmp/post-install.sh
fi

rm -rf $HENCE_PREFIX/ctlscript.sh \
  $HENCE_PREFIX/config \
  $HENCE_PREFIX/uninstall $HENCE_PREFIX/uninstall.dat \
  tmp/*
