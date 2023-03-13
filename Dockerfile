FROM alpine:3.17@sha256:69665d02cb32192e52e07644d76bc6f25abeb5410edc1c7a81a10ba3f0efb90a

LABEL description="For building ShardingSphere static sites with Hugo."
LABEL maintainer="Nianjun Sun <sunnianjun@apache.org>"

ENV HUGO_VERSION=0.70.0

ADD ./bin/hugo_0.70.0_Linux-64bit/hugo /usr/local/bin/hugo

RUN apk add --update \
    && apk upgrade \
    && apk add --no-cache ca-certificates

VOLUME /input
VOLUME /output

WORKDIR /src

EXPOSE 1313
