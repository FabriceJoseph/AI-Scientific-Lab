.PHONY: help build up down restart shell jupyter test format lint logs clean add remove lock sync deps deps-tree update update-package

default: help

# Default target = help
.DEFAULT_GOAL := help

# =============================================================================
# Environment detection
# =============================================================================

ifeq ($(wildcard /.dockerenv),)
	IN_CONTAINER=false
else
	IN_CONTAINER=true
endif


ifeq ($(IN_CONTAINER),true)

	EXEC=
	UV=uv
	PYTHON=python
	RUFF=ruff
	PYTEST=pytest
	JUPYTER=jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root

else

	EXEC=docker compose exec lab
	UV=$(EXEC) uv
	PYTHON=$(EXEC) python
	RUFF=$(EXEC) ruff
	PYTEST=$(EXEC) pytest
	JUPYTER=$(EXEC) jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root

endif


## --------------------------------------
## HELP
## --------------------------------------
help:
	@echo ""
	@echo "AI Scientific Lab - Available commands"
	@echo "--------------------------------------"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'
	@echo ""


## --------------------------------------
## CORE
## --------------------------------------

build: ## Build Docker image
	docker compose build

up: ## Start the lab (detached)
	docker compose up -d

down: ## Stop the lab
	docker compose down

restart: down up ## Restart the lab


## --------------------------------------
## DEV
## --------------------------------------

shell: ## Open bash inside container
ifeq ($(IN_CONTAINER),true)
	bash
else
	docker compose exec lab bash
endif

jupyter: ## Start JupyterLab
	$(JUPYTER)


## --------------------------------------
## QUALITY
## --------------------------------------

test: ## Run test suite (pytest)
	$(PYTEST)

format: ## Format code with Ruff
	$(RUFF) format .

lint: ## Lint code with Ruff
	$(RUFF) check .


## --------------------------------------
## OBSERVABILITY
## --------------------------------------

logs: ## Show container logs
	docker compose logs -f


## --------------------------------------
## CLEAN
## --------------------------------------

clean: ## Remove containers + volumes
	docker compose down --volumes --remove-orphans

## --------------------------------------
## DEPENDENCY MANAGEMENT
## --------------------------------------

add: ## Add a Python dependency (make add PACKAGE=numpy)
	@test -n "$(PACKAGE)" || (echo "Usage: make add PACKAGE=<package>" && exit 1)
	$(UV) add $(PACKAGE)

remove: ## Remove a Python dependency (make remove PACKAGE=numpy)
	@test -n "$(PACKAGE)" || (echo "Usage: make remove PACKAGE=<package>" && exit 1)
	$(UV) remove $(PACKAGE)

lock: ## Regenerate the lockfile
	$(UV) lock

sync: ## Synchronize the virtual environment
	$(UV) sync

deps: ## List installed Python dependencies
	$(UV) pip list

deps-tree: ## Show dependency tree
	$(UV) tree

update: ## Update all Python dependencies
	$(UV) lock --upgrade
	$(UV) sync

update-package: ## Update a specific dependency (make update-package PACKAGE=numpy)
	@test -n "$(PACKAGE)" || (echo "Usage: make update-package PACKAGE=<package>" && exit 1)
	$(UV) add --upgrade $(PACKAGE)