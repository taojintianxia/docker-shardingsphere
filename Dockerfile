FROM alpine:3.17@sha256:69665d02cb32192e52e07644d76bc6f25abeb5410edc1c7a81a10ba3f0efb90a

LABEL description="For building ShardingSphere static sites with Hugo."
LABEL maintainer="Nianjun Sun <sunnianjun@apache.org>"

ENV HUGO_VERSION=0.70.0

COPY ./bin/hugo_0.70.0_Linux-64bit/hugo /usr/local/bin/hugo
COPY ./build.sh /opt/
RUN chmod 0755 /opt/build.sh

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && echo "export PATH=$PATH:/bin/bash" > ~/.bashrc \
    && source ~/.bashrc

VOLUME /opt/input
VOLUME /opt/output

WORKDIR /opt/input
CMD ["/opt/build.sh"]

EXPOSE 1313
