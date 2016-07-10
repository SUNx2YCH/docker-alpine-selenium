FROM sunx2ych/alpine-selenium-base:2.53.0
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

ENV SELENIUM_HUB_URL http://hub:4444/grid/register

RUN apk --no-cache add \
        dbus \
        ttf-freefont \
        xvfb \
    && \
    # Fix for D-Bus issue:
    # D-Bus library appears to be incorrectly set up; failed to read machine uuid: Failed to open "/etc/machine-id": No such file or directory
    dbus-uuidgen --ensure=/etc/machine-id

COPY utils.sh ${SELENIUM_DIR}
