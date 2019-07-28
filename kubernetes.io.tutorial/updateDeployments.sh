kubectl get all
kubectl describe pods
kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2
#comando confirma update
kubectl rollout status deployments/kubernetes-bootcamp
kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=grc.io/google-samples/kubernetes-bootcamp:v10
kubectl get deployments.
kubectl rollout undo deployments/kubernetes-bootcamp
