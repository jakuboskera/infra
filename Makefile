.ONESHELL:
.SHELL := /bin/bash
.PHONY: ALL
.DEFAULT_GOAL := help

help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

pre-commit-install: ## Install pre-commit into your git hooks. After that pre-commit will now run on every commit
	pre-commit install

pre-commit-all: ## Manually run all pre-commit hooks on a repository (all files)
	pre-commit run --all-files

tf-terraform-cloud-init: ## Initialize a terraform project terraform-cloud
	terraform -chdir=terraform-cloud init

tf-heroku-init: ## Initialize a terraform project heroku
	terraform -chdir=heroku init

tf-todo-init: ## Initialize a terraform project todo
	terraform -chdir=todo init

tf-todo-init: ## Initialize a terraform project todo
	terraform -chdir=todo init

# New targets here
