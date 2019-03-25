# {project_name} Makefile
# author: Eli Kotyluk <elijah@elijahkotyluk.com>

SHELL := /bin/bash

# vars
THIS_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PKG_DIR := $(THIS_DIR)/node_modules
BUNDLE_DIR := $(THIS_DIR)/dist

YARN := $(shell command -v yarn 2> /dev/null)
WEBPACK := $(PKG_DIR)/.bin/webpack
WEBPACK_DEV := $(PKG_DIR)/.bin/webpack-dev-server

TARGETS := $(THIS_DIR)/dist/main.bundle.*

.PHONY: all dev build deploy clean distclean watch

all: clean build dev

dev: $(PKG_DIR)
	@echo "Running webpack-dev-server at localhost:8080..."
	@$(WEBPACK_DEV) --mode development --progress --open

build: $(PKG_DIR)
	@echo "Building bundled assets in development mode..."
	@$(WEBPACK) --mode development --progress

deploy: $(PKG_DIR)
	@echo "Building bundled assets in production mode and deploying to google cloud..."
	@$(WEBPACK) --mode production --progress && gcloud app deploy

clean:
	@echo "Cleaning bundled assets..."
	-@rm -rf $(TARGETS) 2> /dev/null

distclean:
	@echo "Cleaning downloaded packages..."
	-@rm -rf $(PKG_DIR) 2> /dev/null

watch: $(PKG_DIR)
	@echo "Building bundled assets and watching for changes..."
	@$(WEBPACK) --watch

init: $(PKG_DIR)
	@echo "installing all Javascript dependencies..."
	-@yarn install


$(PKG_DIR):
	@echo "Installing build dependencies..."
ifndef YARN
	@echo "You don't have Yarn installed. To install, type 'npm install -g yarn'."
	@exit 1
endif
	@yarn
