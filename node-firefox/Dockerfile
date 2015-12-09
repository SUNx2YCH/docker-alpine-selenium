FROM sunx2ych/alpine-selenium-base:2.48.2
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV HUB_HOST hub
ENV HUB_PORT 4444

RUN apk update && \
    apk add firefox \
            ttf-freefont \
            xvfb && \
    rm -rf /var/cache/apk/*

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
