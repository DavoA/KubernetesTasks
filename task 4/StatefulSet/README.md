Run this commands in folder terminal,

```bash
  kubectl apply -f secret.yaml
  kubectl apply -f statefulset.yaml
```

<hr />
<br />

After that run this command in terminal

```bash
  kubectl exec <your-pod-name> -- env
```