FROM debian:11.7

#RUN apt list --installed



# RUN export DEBIAN_FRONTEND=noninteractive \
#   && apt-get update && apt --fix-broken install \
#   && apt install -y libc-bin

# RUN ls -la /var/cache/ldconfig && rm -f /var/cache/ldconfig/aux-cache

# RUN /sbin/ldconfig && ls -la /var/cache/ldconfig

RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        git \
        gnupg2 \
        software-properties-common \
        python3 \
        python3-pip


# Install Docker and qemu
# binfmt-support=2.2.2-2 testing
# binfmt-support=2.2.1-1+deb11u1 stable
# binfmt-support= backports
# qemu-user-static=1:7.2+dfsg-6 testing
# qemu-user-static=1:5.2+dfsg-11+deb11u2 stable
# qemu-user-static= 1:7.2+dfsg-7~bpo11+1 backports
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
    add-apt-repository "deb https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
    # add-apt-repository "deb http://deb.debian.org/debian testing main" && \
    add-apt-repository "deb http://deb.debian.org/debian bullseye-backports main" && \
    apt-get update && apt-get install -y \
        docker-buildx-plugin \
        docker-ce-cli \
        binfmt-support=2.2.1-1+deb11u1
        #qemu-user-static=1:7.2+dfsg-7~bpo11+1
##    && cp $(which qemu-aarch64-static) /usr/bin/qemu-aarch64


# Write version file
RUN printf "$(docker --version | perl -pe 's/^.*\s(\d+\.\d+\.\d+.*),.*$/$1/')_$(docker buildx version | perl -pe 's/^.*v?(\d+\.\d+\.\d+).*$/$1/')" > /version && \
    cat /version

RUN echo "[DEBUG] why arm64 reports no docker 'which docker'=[$(which docker)]"