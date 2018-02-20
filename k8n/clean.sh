#! /bin/bash
eval $(minikube docker-env)
docker rmi hello-go:v1 -f >/dev/null 2>&1
kubectl delete service hello-go >/dev/null 2>&1
kubectl delete deployment hello-go >/dev/null 2>&1
eval $(minikube docker-env -u)