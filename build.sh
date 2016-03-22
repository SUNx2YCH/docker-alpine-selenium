#!/bin/sh

SELENIUM_VERSION=2.53.0

docker build -t sunx2ych/alpine-selenium-base:$SELENIUM_VERSION base
docker build -t sunx2ych/alpine-selenium-hub:$SELENIUM_VERSION hub
docker build -t sunx2ych/alpine-selenium-node-firefox:$SELENIUM_VERSION node-firefox
