#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <docker_namespace> <container_name>"
    exit 1
fi

DOCKER_NS=$1
CONTAINER=$2

if [ ! -f ./.env/${CONTAINER}version ]; then
    if [ ! -d ./.env ]; then
        mkdir -p ./.env
    fi
    echo 0 > ./.env/${CONTAINER}version
fi

VERSION=$(cat ./.env/${CONTAINER}version)
((++VERSION))
docker buildx build ./$CONTAINER -t $DOCKER_NS/k8s-$CONTAINER:$VERSION --platform linux/amd64,linux/arm/v7,linux/arm64
docker push $DOCKER_NS/k8s-$CONTAINER:$VERSION
echo $VERSION > ./.env/${CONTAINER}version

