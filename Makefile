#!/usr/bin/env make

# Use bash as shell (Note: Ubuntu now uses dash which doesn't support PIPESTATUS)
SHELL := $(shell which bash)

# defaults to using -s, unless VERBOSE is set
ifeq ($(VERBOSE)_x, _x)
	MAKEFLAGS+=-s
endif

.DEFAULT_GOAL := help

.PHONY: help

install: ## Install dependencies for the project
	echo "@TODO"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
