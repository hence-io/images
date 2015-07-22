FROM hence/base:latest
MAINTAINER Clint Beacock <clint@therefore.ca>

# Add common packages and create hence user and added specific requirements
RUN apk add --update \
  git \
  build-base && \
  rm -rf /var/cache/apk/*
