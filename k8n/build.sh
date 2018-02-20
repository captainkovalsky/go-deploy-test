#! /bin/bash

eval $(minikube docker-env)
docker build -t hello-go:v1 .
eval $(minikube docker-env -u)