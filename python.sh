#!/bin/bash
set -ex
DEBIAN_FRONTEND=noninteractive
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt update
yes "yes" | python3 -m pip install tflite-runtime --no-cache-dir
yes "yes yes" | apt install -y libedgetpu1-std python3-pycoral
apt clean all
apt autoremove
rm -rf /var/cache/apt/archives /var/lib/apt/lists/*