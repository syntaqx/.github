#!/usr/bin/env make

# Use bash as shell (Note: Ubuntu now uses dash which doesn't support PIPESTATUS)
SHELL := $(shell which bash)

# defaults to using -s, unless VERBOSE is set
ifeq ($(VERBOSE)_x, _x)
	MAKEFLAGS+=-s
endif

# If you see pwd_unknown showing up, this is why. Re-calibrate your system.
PWD ?= pwd_unknown

# PROJECT_NAME defaults to name of the current directory.
# should not to be changed if you follow GitOps operating procedures.
PROJECT_NAME = $(notdir $(PWD))

# Note. If you change this, you also need to update docker-compose.yml.
# only useful in a setting with multiple services/ makefiles.
SERVICE_TARGET := main

# delete built-in suffixes
.SUFFIXES:
