FROM --platform=$TARGETPLATFORM debian:11.8-slim

LABEL \
  org.opencontainers.image.vendor="No Fuss Computing" \
  org.opencontainers.image.title="BuildX QEMU" \
  org.opencontainers.image.description="QEMU within docker for cross-platform builds" \
  org.opencontainers.image.vendor="No Fuss Computing" \
  io.artifacthub.package.license="MIT"


ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        git \
        gnupg2 \
        software-properties-common \
        python3 \
        python3-pip


RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    add-apt-repository "deb http://deb.debian.org/debian bullseye-backports main" && \
    apt-get update && apt-get install -y \
        docker-buildx-plugin \
        docker-ce-cli \
        binfmt-support=2.2.1-1+deb11u1 \
        qemu-user-static=1:7.2+dfsg-7+deb12u2~bpo11+1
