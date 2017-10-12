FROM debian:stretch

RUN apt-get update -q && apt-get install -y -q \
    build-essential \
    chrpath \
    cpio \
    debianutils \
    diffstat \
    gawk \
    gcc-multilib \
    git-core \
    iputils-ping \
    libsdl1.2-dev \
    locales \
    procps \
    python \
    python3 \
    python3-pexpect \
    python3-pip \
    socat \
    sudo \
    texinfo \
    unzip \
    wget \
    xz-utils \
 && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

ENV LANG en_US.utf8
