FROM alpine:3.3
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV SELENIUM_DIR /selenium

RUN mkdir ${SELENIUM_DIR}
WORKDIR ${SELENIUM_DIR}

RUN apk add --no-cache openjdk8-jre-base

ADD http://selenium-release.storage.googleapis.com/2.53/selenium-server-standalone-2.53.0.jar ${SELENIUM_DIR}
