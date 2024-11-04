#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/mysql-secret.k8s.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/mysql-storage.k8s.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/mysql-persistent-volume-claim.k8s.yaml
kubectl apply -f https://raw.githubusercontent.com/JeBear76/kubernetes-playground/refs/heads/master/mysql/mysql-deployment.k8s.yaml
