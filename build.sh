#!/bin/bash
# 1) You need to build the docker-image
#    docker build --build-arg VCS_REF=`git rev-parse --short HEAD` .
# 2) Get the image name after build the docker-image, and insert to IMAGE_NAME
# $IMAGE_NAME var is injected into the build so the tag is correct.

IMAGE_NAME=e5ba170221cc;

docker build --build-arg VCS_REF=`git rev-parse — short HEAD` \
  --build-arg BUILD_DATE=`date -u +”%Y-%m-%dT%H:%M:%SZ”` \
  -t $IMAGE_NAME .
