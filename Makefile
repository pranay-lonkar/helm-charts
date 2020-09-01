all: lint charts index

.PHONY: charts

lint:
	@helm lint --strict sample-golang-app
	@helm lint --strict sample-node-app

charts:
	@helm package sample-golang-app --destination docs
	@helm package sample-node-app --destination docs
	@helm repo index docs --url=https://pranay-lonkar.github.io/helm-charts

index:
	helm repo index ./ --url https://pranay-lonkar.github.io/helm-charts
	sed -i '' 's/\/docs//' index.yaml
	mv index.yaml ./docs
