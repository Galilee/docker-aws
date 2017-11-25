SHELL_NAME ?= /bin/bash
BUILD_DIR := $(shell pwd)
TAG_NAME := docker-awscli

.PHONY: build shell

build:
	docker build -t $(TAG_NAME) .

shell:
	docker run --rm -ti $(TAG_NAME) $(SHELL_NAME)
