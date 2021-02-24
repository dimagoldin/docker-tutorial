FROM alpine:latest

WORKDIR script

RUN apk add curl jq

COPY script.sh script.sh

ENTRYPOINT ["/bin/sh", "script.sh"]