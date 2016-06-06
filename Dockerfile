FROM alpine:latest

RUN apk --update --upgrade add python py-pip && \
    pip install elasticsearch-curator

COPY ./bin/ /usr/local/bin

ENTRYPOINT ["sh", "/usr/local/bin/entrypoint"]