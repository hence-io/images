FROM hence/base:3.2-onbuild
MAINTAINER Clint Beacock <clint@therefore.ca>

ENV HENCE_APP_NAME=go \
    HENCE_APP_USER=hence \
    HENCE_APP_VERSION=3.2

ENV HENCE_APP_DIR=$HENCE_PREFIX/$HENCE_APP_NAME \
    HENCE_APP_VOL_PREFIX=/hence/$HENCE_APP_NAME

RUN apk --update add \
  go && \
  rm -rf /var/cache/apk/*

COPY rootfs /

RUN sh $HENCE_PREFIX/install.sh && \
    s6-rmrf /etc/s6/services/s6-fdholderd/down

EXPOSE 8000

ENV GOPATH=/go \
    PATH=$GOPATH/bin:/usr/src/go/bin:$PATH

VOLUME ["$GOPATH", "$HENCE_APP_VOL_PREFIX/logs/go-general-logs", "$HENCE_APP_VOL_PREFIX/logs/go-error-logs"]

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH

COPY go-wrapper /usr/local/bin/
