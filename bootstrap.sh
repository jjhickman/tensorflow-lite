#!/bin/bash
set -ex
apt update

DEBIAN_FRONTEND=noninteractive apt install -y build-essential software-properties-common cmake git curl ca-certificates \
  zip unzip tar gnupg wget zsh zlib1g-dev python3 python3-dev python3-pip libusb-1.0-0-dev python3-distutils --no-install-recommends
update-ca-certificates
apt clean all
rm -rf /var/cache/apt/archives /var/lib/apt/lists/*