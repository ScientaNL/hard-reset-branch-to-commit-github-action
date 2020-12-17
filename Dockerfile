FROM alpine:latest

RUN apk --no-cache add git

ADD entrypoint.sh /entrypoint.sh
RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
