kubectl get - list resources
kubectl describe - show detailed information about a resource
kubectl logs - print the logs from a container in a pod
kubectl exec - execute a command on a container in a po

kubectl get - list resources
kubectl describe -
kubectl logs -
kubectl exec -

kubectl logs $POD_NAME
kubectl describe pods
kubectl describe node
kubectl describe deployments


kubectl exec mypod date
kubectl exec mypod -c ruby-container date
kubectl exec mypod -c ruby-container -i -t -- bash
kubectl exec $POD_NAME env
