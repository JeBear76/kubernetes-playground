#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/secret.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/service.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/configmap.yaml
