FROM python:alpine

# set environment variable
#
ARG VERSION="python-latest"

# set maintenance info
#
LABEL dev.gworkx.tech.version="v1.0"
LABEL vendor="Gelwa Workx"
LABEL maintainer="gelwa.workx@gmail.com"
LABEL dev.gworkx.tech.release-date="2019-08-04"
LABEL dev.gworkx.tech.version.is-production="$VERSION"

RUN set -x \
    && apk update && apk upgrade && apk add --no-cache build-base alpine-sdk bash \
    openssl-dev python-dev libffi-dev libxml2-dev libxslt-dev \
    && rm -rf /var/cache/apk/*

WORKDIR /app

ADD source-code/ ./

RUN pip install -U pip cython && pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
CMD ["python","app.py"]
