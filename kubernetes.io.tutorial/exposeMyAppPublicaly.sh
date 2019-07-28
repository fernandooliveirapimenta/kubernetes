kubectl get services
kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
kubectl get service
kubectl describe services/kubernetes-bootcamp
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT
curl $(minikube ip):$NODE_PORT

kubectl describe deployment/kubernetes-bootcamp
kubectl describe deployment
kubectl get pods -l run=kubernetes-bootcamp
kubectl get svc -l run=kubernetes-bootcamp
export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME
kubectl label pod $POD_NAME app=v1
kubectl describe pods $POD_NAME
kubectl get pods -l app=v1

kubectl delete service -l run=kubernetes-bootcamp
kubectl get service
curl $(minikube ip):$NODE_PORT
kubectl exec -ti $POD_NAME curl localhost:8080
