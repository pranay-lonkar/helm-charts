# Sample Node App

This Helm chart installs [sample-node-app](https://hub.docker.com/r/pranaylonkar19/sample-node-app).

Helm repository for sample-node-app helm chart

```bash
$ helm repo add helm-charts https://pranay-lonkar.github.io/helm-charts
```

To install `sample-node-app` on your Kubernetes cluster, run:

```bash
$ helm upgrade \
  --install \
  --debug \
  --wait \
  sample-node-app helm-charts/sample-node-app
```
