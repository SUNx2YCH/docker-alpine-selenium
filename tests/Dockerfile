FROM alpine:3.4
MAINTAINER Alexander Ivanovsky <sunx2ych@gmail.com>

WORKDIR /tests

COPY requirements.txt /tests
RUN apk --no-cache add \
        python \
        py-pip \
    && \
    pip install -r requirements.txt \
    && \
    rm requirements.txt

COPY *.py /tests/

ENTRYPOINT ["py.test"]
CMD ["-v"]
