FROM hence/base:3.2-onbuild
MAINTAINER Clint Beacock <clint@therefore.ca>

ENV HENCE_APP_NAME=nginx \
    HENCE_APP_USER=nginx \
    HENCE_APP_VERSION=1.8.0-r1 \

ENV HENCE_APP_DIR=$HENCE_PREFIX/$HENCE_APP_NAME \
    HENCE_APP_VOL_PREFIX=/hence/$HENCE_APP_NAME

ENV PATH=$HENCE_APP_DIR/sbin:$HENCE_PREFIX/common/bin:$PATH

RUN apk add --update \
  nginx=$HENCE_APP_VERSION && \
  rm -rf /var/cache/apk/* && \
  rm -rf /etc/nginx/* && \
  chsh -s /bin/bash nginx

COPY rootfs /

RUN sh $HENCE_PREFIX/install.sh

EXPOSE 80 443

VOLUME ["/etc/nginx/custom.d", "/app", "$HENCE_APP_VOL_PREFIX/conf", "$HENCE_APP_VOL_PREFIX/logs/nginx-access-logs", "$HENCE_APP_VOL_PREFIX/logs/nginx-error-logs"]

WORKDIR /app
