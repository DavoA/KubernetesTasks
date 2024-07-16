Run this commands in folder terminal,

```bash
  kubectl apply -f configmap.yaml
  kubectl apply -f deployment.yaml
```

<hr />
<br />

After that run this command in terminal

```bash
  kubectl exec <your-pod-name> -- env
```