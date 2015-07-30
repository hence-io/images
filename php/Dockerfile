FROM hence/base:3.2-onbuild
MAINTAINER Clint Beacock <clint@therefore.ca>

ENV HENCE_APP_DIR=$HENCE_PREFIX/php \
    HENCE_APP_NAME=php \
    HENCE_APP_USER=hence \
    HENCE_APP_VERSION=5.6.11-r0

ENV HENCE_APP_VOL_PREFIX=/hence/$HENCE_APP_NAME \
    PATH=$HENCE_APP_DIR/bin:$PATH

RUN apk --update add \
    php-fpm=$HENCE_APP_VERSION \
    php-cli \
    php-ctype \
    php-curl \
    php-dom \
    php-gd \
    php-iconv \
    php-intl \
    php-json \
    php-mcrypt \
    php-memcache \
    php-mysql \
    php-mysqli \
    php-openssl \
    php-pdo \
    php-pdo_mysql \
    php-pdo_pgsql \
    php-pdo_sqlite \
    php-pear \
    php-pgsql \
    php-phar \
    php-sqlite3 \
    php-xml \
    php-zip \
    php-zlib && \
    rm -rf /var/cache/apk/* && \
    rm -rf /etc/php/*

COPY rootfs /

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer

RUN sh $HENCE_PREFIX/install.sh

EXPOSE 9000

VOLUME ["/etc/php/custom.d", "/app", "$HENCE_APP_VOL_PREFIX/conf", "$HENCE_APP_VOL_PREFIX/logs/php-general-logs", "$HENCE_APP_VOL_PREFIX/logs/php-error-logs"]

WORKDIR /app
