#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <docker_namespace> <container_name>"
    exit 1
fi

DOCKER_NS=$1
CONTAINER=$2

docker buildx build ./$CONTAINER -t $DOCKER_NS/k8s-$CONTAINER --platform linux/amd64,linux/arm/v7,linux/arm64
docker push $DOCKER_NS/k8s-$CONTAINER


