#/bin/bash
set -ex
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list
python3 -m pip install tflite-runtime --no-cache-dir
apt install -y libedgetpu1-max python3-pycoral
apt clean all
apt autoremove
rm -rf /var/cache/apt/archives /var/lib/apt/lists/*