.PHONY: build
build:
	docker build -t upamune/mkdocs-material-plantuml .
.PHONY: lint
lint:
	hadolint ./Dockerfile
