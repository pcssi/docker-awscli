.DEFAULT_GOAL := help

CONTAINER_NAME=pcssi/awscli

all: build
build:	## Build the container
	docker build -t ${CONTAINER_NAME} .

help:
	@printf "\033[36m%-30s\033[0m %s\n" 'Targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Run the container
	docker run --rm  ${CONTAINER_NAME} aws --version
