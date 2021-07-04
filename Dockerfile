FROM python:3.8.1-alpine3.11
LABEL maintainer="Till Wegmueller, till.wegmueller@openflowlabs.com"

RUN apk add --no-cache git git-fast-import openssh build-base

COPY action.sh /action.sh

RUN apk add --no-cache bash ruby && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
