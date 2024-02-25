#!/bin/bash
set -ex
BAZEL_VERSION="5.4.0"
TOTAL_CORES=$(grep -c ^processor /proc/cpuinfo)
NUM_BUILD_CORES=$(( $TOTAL_CORES / 2 ))
DEBIAN_FRONTEND=noninteractive

ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
    echo "aarch64"
    wget -O /usr/local/bin/bazel https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-linux-arm64
    chmod +x /usr/local/bin/bazel
    bazel version
    which bazel
else
    echo "amd64"
    wget -O /usr/local/bin/bazel https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-linux-x86_64
    chmod +x /usr/local/bin/bazel
    bazel version
    which bazel
fi
wget -O- https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor > /etc/apt/trusted.gpg.d/coral-edgetpu.gpg
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
apt update
#chsh -s $(which zsh)
#sed -i -e 's$@bazel_tools//platforms:(linux|osx|windows|android|freebsd|ios|os)$@platforms//os:/g' **/*
#sed -i -e 's$@bazel_tools//platforms:(cpu|x86_32|x86_64|ppc|arm|arm64|aarch64|s390x)$@platforms//cpu:/g' **/*
#hsh -s $(which bash)
git clone --recurse-submodules https://github.com/google-coral/libcoral
cd libcoral
git submodule init
git submodule update
make -j $NUM_BUILD_CORES
make install
cd ..
rm -rf libcoral