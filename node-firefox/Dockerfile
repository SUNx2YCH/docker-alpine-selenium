FROM alpine:3.2

RUN mkdir /selenium
WORKDIR /selenium

RUN apk add --update firefox \
                     openjdk7-jre-base \
                     ttf-freefont \
                     xvfb && \
    rm -rf /var/cache/apk/*

RUN wget http://selenium-release.storage.googleapis.com/2.48/selenium-server-standalone-2.48.2.jar

ENV HUB_HOST 172.17.0.1
ENV HUB_PORT 4444

ADD entrypoint.sh /selenium
ENTRYPOINT ["./entrypoint.sh"]
