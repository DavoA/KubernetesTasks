Run this commands in folder terminal,

```bash
  kubectl apply -f namespace.yaml
  kubectl apply -f pod.yaml
  kubectl apply -f service.yaml
  kubectl port-forward svc/my-service 8080:80 --namespace=my-namespace
```

<hr />
<br />

After that go to <b>`http://localhost:8080/`</b> and see the result
