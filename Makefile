.PHONY: pre-commit-install
## Install pre-commit into your git hooks. After that pre-commit will now run on every commit.
pre-commit-install:
	pre-commit install

.PHONY: pre-commit-all
## Manually run all pre-commit hooks on a repository (all files).
pre-commit-all:
	pre-commit run --all-files

.PHONY: tf-terraform-cloud-init
## Initialize a terraform project terraform-cloud
tf-terraform-cloud-init:
	terraform -chdir=terraform-cloud init

.PHONY: tf-heroku-init
## Initialize a terraform project heroku
tf-heroku-init:
	terraform -chdir=heroku init

# New targets here


# Needs to be at the end of this file
include show-help-minified.make
