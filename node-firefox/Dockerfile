FROM sunx2ych/alpine-selenium-base:2.53.0
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV HUB_HOST hub
ENV HUB_PORT 4444

RUN apk add --no-cache firefox-esr \
                       ttf-freefont \
                       dbus \
                       xvfb
# Fix for issue "D-Bus library appears to be incorrectly set up; failed to read machine uuid: Failed to open "/etc/machine-id": No such file or directory"
RUN dbus-uuidgen > /etc/machine-id

COPY entrypoint.sh ${SELENIUM_DIR}
ENTRYPOINT ["./entrypoint.sh"]
