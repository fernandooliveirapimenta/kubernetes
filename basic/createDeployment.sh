#!/bin/bash

kubectl create deployment hello-node --image=gcr.io/hello-minikube-zero-install/hello-node
kubectl get deployments
kubectl get pods
kubectl get events
kubectl config view
kubectl expose deployments hello-node --type=LoadBalancer --port=8080
kubectl get services
#minikube pega ip do hello-node
minikube service hello-node
minikube addons enable heapster
kubectl get pod,svc -n kube-system
minikube addons disable heapster
kubectl delete service hello-node
kubectl delete deployment hello-node

