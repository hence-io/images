FROM hence/base:3.2-onbuild
MAINTAINER Clint Beacock <clint@therefore.ca>

ENV HENCE_APP_DIR=$HENCE_PREFIX/mysql \
    HENCE_APP_NAME=mariadb \
    HENCE_APP_USER=mysql \
    HENCE_APP_VERSION=5.5.43-r5

ENV HENCE_APP_VOL_PREFIX=/hence/$HENCE_APP_NAME \
    PATH=$HENCE_APP_DIR/bin:$PATH

RUN apk --update add \
    mariadb=$HENCE_APP_VERSION \
    mariadb-client && \
    rm -rf /var/cache/apk/* && \
    rm -rf /etc/mysql && \
    rm -rf $HENCE_APP_VOL_PREFIX/data/*

COPY rootfs /

RUN sh $HENCE_PREFIX/install.sh && \
    s6-rmrf /etc/s6/services/s6-fdholderd/down

COPY hence-utils-custom.sh /hence-utils-custom.sh

EXPOSE 3306

VOLUME ["$HENCE_APP_VOL_PREFIX/data", "$HENCE_APP_VOL_PREFIX/conf", "$HENCE_APP_VOL_PREFIX/logs/mysql-general-logs", "$HENCE_APP_VOL_PREFIX/logs/mysql-error-logs", "$HENCE_APP_VOL_PREFIX/logs/mysql-slow-query-logs"]
