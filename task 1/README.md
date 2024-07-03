Run this commands in folder terminal

kubectl apply -f namespace.yaml
kubectl apply -f pod.yaml
kubectl apply -f service.yaml
kubectl port-forward svc/my-service 8080:80 --namespace=my-namespace

And after that go to http://localhost:8080/ and see the result
