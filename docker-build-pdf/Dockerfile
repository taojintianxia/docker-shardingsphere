FROM ubuntu:22.04 as base

LABEL description="For building PDF document"
LABEL maintainer="Nianjun Sun <sunnianjun@apache.org>"

COPY bin/prepare-env.sh /
RUN chmod 777 /prepare-env.sh

RUN apt-get update -y \
    && apt-get upgrade -y \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt-get install -y git software-properties-common python3.7 python3-pip

RUN ["/prepare-env.sh"]
