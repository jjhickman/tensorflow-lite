#/bin/bash
set -ex
NUM_BUILD_CORES=$(grep -c ^processor /proc/cpuinfo)
wget -O- https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor > /etc/apt/trusted.gpg.d/coral-edgetpu.gpg
#sed 's$@bazel_tools//platforms:(linux|osx|windows|android|freebsd|ios|os)$@platforms//os:\1$' -E -i ./*
#sed 's$@bazel_tools//platforms:(cpu|x86_32|x86_64|ppc|arm|aarch64|s390x)$@platforms//cpu:\1$' -i -E ./*
git clone --recurse-submodules https://github.com/google-coral/libcoral
cd libcoral
git submodule init
git submodule update
make -j $NUM_BUILD_CORES
make install
cd ..
rm -rf libcoral