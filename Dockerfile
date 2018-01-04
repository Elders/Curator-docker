FROM alpine:3.5
MAINTAINER Elders

RUN apk --update --upgrade add python py-pip && \
    pip install --upgrade pip && \
    pip install -U elasticsearch-curator===4.2.6

COPY ./bin/ /usr/local/bin

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint"]