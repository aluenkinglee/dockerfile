# This image will always use the latest stable version of zsh
FROM aluenkinglee/ubuntuzsh:latest

# image metadata
LABEL org.opencontainers.image.title="ohmyzsh"
LABEL org.opencontainers.image.description="Oh My Zsh versioned image"
LABEL org.opencontainers.image.url="https://github.com/ohmyzsh/docker"
LABEL org.opencontainers.image.vendor="Oh My Zsh"
LABEL org.opencontainers.image.authors="Marc Cornellà <hello@mcornella.com>"
LABEL maintainer="Marc Cornellà <hello@mcornella.com>"

# set UTF-8 locale
ENV LANG=C.UTF-8

# install basic tools
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    ca-certificates \
    git \
    curl && rm -rf /var/lib/apt/lists/*

# install ohmyzsh
RUN BRANCH=${OMZ_VERSION} \
    sh -c "$(curl -fsSL https://gitee.com/pocmon/ohmyzsh/raw/master/tools/install.sh)" "" \
    --unattended