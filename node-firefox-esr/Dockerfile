FROM sunx2ych/alpine-selenium-node-base:2.53.1
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

RUN apk --no-cache add \
        firefox-esr

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
