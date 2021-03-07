# Use ubuntu focal as parent image
FROM ubuntu:focal

SHELL ["/bin/sh", "-x", "-e", "-c"]

# Set maintainer
LABEL maintainer="Laurens Sion <laurens@sion.info>"

# Set the working directory to /app
WORKDIR /data
VOLUME /data

ENV DEBIAN_FRONTEND=noninteractive
# Update and install texlive-full
RUN apt-get update -q \
 && apt-get install -qy --no-install-recommends \
        curl \
        fonts-croscore \
        fonts-crosextra-carlito \
        fonts-inconsolata \
        fonts-texgyre \
        git \
        lmodern \
        make \
        openjdk-8-jre-headless \
        rubber \
        scons \
        tex-gyre \
        texlive-full \
        xz-utils \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
