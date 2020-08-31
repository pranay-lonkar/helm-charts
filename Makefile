all: charts

.PHONY: charts

charts:
	@helm lint --strict sample-golang-app
	@helm package sample-golang-app --destination docs
	@helm lint --strict sample-node-app
	@helm package sample-node-app --destination docs
	@helm repo index docs --url=https://pranay-lonkar.github.io/helm-charts

index:
	helm repo index ./ --url https://pranay-lonkar.github.io/helm-charts
	sed -i '' 's/\/docs//' index.yaml
	mv index.yaml ./docs
