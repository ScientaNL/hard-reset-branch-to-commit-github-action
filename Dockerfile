FROM alpine:latest

RUN apk --no-cache add git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
