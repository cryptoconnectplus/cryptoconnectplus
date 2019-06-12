#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-cryptoconnectpluspay/cryptoconnectplusd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cryptoconnectplusd docker/bin/
cp $BUILD_DIR/src/cryptoconnectplus-cli docker/bin/
cp $BUILD_DIR/src/cryptoconnectplus-tx docker/bin/
strip docker/bin/cryptoconnectplusd
strip docker/bin/cryptoconnectplus-cli
strip docker/bin/cryptoconnectplus-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
