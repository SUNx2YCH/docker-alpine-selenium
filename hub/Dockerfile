FROM sunx2ych/alpine-selenium-base:2.53.1
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV SELENIUM_HUB_PORT 4444

EXPOSE ${SELENIUM_HUB_PORT}

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
