#/bin/bash
set -ex
apt update
apt install -y build-essential cmake software-properties-common git python3 python3-dev libpython3-dev curl ca-certificates tar gnupg wget --no-install-recommends
update-ca-certificates
#ARCH=$(uname -m)
#if [ "$ARCH" == "aarch64" ]; then
#    echo "arm64"
#    wget -O /usr/local/bin/bazelisk https://github.com/bazelbuild/bazelisk/releases/download/v$BAZELISK_VERSION/bazelisk-linux-arm64
#    chmod +x /usr/local/bin/bazelisk
#else
#    echo "amd64"
#    curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor | tee /usr/share/keyrings/bazel-archive-keyring.gpg
#    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
#    apt update
#    apt install bazel -y
#    echo "$(bazel version)"
#    echo "$(which -v bazel)"
#fi
apt clean all
rm -rf /var/cache/apt/archives /var/lib/apt/lists/*