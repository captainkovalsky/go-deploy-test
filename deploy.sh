eval $(minikube docker-env)
docker rmi hello-go:v1 -f
kubectl delete service hello-go
kubectl delete deployment hello-go
docker build -t hello-go:v1 .
kubectl run hello-go --image=hello-go:v1 --port=8080
kubectl expose deployment hello-go --type=LoadBalancer
echo "URL:"
minikube service hello-go --url
eval $(minikube docker-env -u)