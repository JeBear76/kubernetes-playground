# Kubernetes Playground
## Introduction
This repo contains simple docker applications that I use to learn kubernetes.  
Explanation for the various containers will appear below as I create new ones.

## Pre-requisite
Enable multi-platform build in your docker environment.  
[Documentation](https://docs.docker.com/build/building/multi-platform/)  

## For All containers
Build and push the container that you want to play with.  
The _buils.sh_ file is in charge of this.  
>. ./build.sh <YOUR_DOCKER_USERNAME> <FOLDER_NAME>

For example
```
. ./build.sh MyNameIsNobody basic
```
  
kubernetes yaml files are created in each container folder under _kube-templates_.  

## Basic
A simple python site to practice node affinity, opening ports and other 'simple' kubernetes features.


