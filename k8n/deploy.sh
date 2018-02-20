#! /bin/bash

eval $(minikube docker-env)
kubectl run hello-go --image=hello-go:v1 --port=8080
kubectl expose deployment hello-go --type=LoadBalancer
echo "URL:"
minikube service hello-go --url
eval $(minikube docker-env -u)