FROM sunx2ych/alpine-selenium-base:2.48.2
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV HUB_PORT 4444

EXPOSE ${HUB_PORT}

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
