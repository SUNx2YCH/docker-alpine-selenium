FROM alpine:3.4
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ARG SELENIUM_JAR_URL

ENV SELENIUM_DIR /selenium
ENV SELENIUM_JAR selenium-server-standalone.jar

WORKDIR ${SELENIUM_DIR}

RUN apk --no-cache add \
        openjdk8-jre-base

COPY stop_trap.sh ${SELENIUM_DIR}
ADD ${SELENIUM_JAR_URL} ${SELENIUM_DIR}/${SELENIUM_JAR}
