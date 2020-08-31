# Sample Golang App

This Helm chart installs [sample-golang-app](https://hub.docker.com/r/pranaylonkar19/sample-golang-app).

Helm repository for sample-golang-app helm chart

```bash
$ helm repo add helm-charts https://pranay-lonkar.github.io/helm-charts
```

To install `sample-golang-app` on your Kubernetes cluster, run:

```bash
$ helm upgrade \
  --install \
  --debug \
  --wait \
  sample-golang-app helm-charts/sample-golang-app
```
