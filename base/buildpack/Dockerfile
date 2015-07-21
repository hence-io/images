FROM hence/base:0.0.1
MAINTAINER Clint Beacock <clint@therefore.ca>

# Add common packages and create hence user and added specific requirements
RUN apk add --update \
  git \
  build-base && \
  rm -rf /var/cache/apk/*
