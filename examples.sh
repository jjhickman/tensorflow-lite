#/bin/bash
set -ex
mkdir python/coral
cd python/coral
git clone https://github.com/google-coral/pycoral.git
cd pycoral
chmod +x examples/install_requirements.sh
bash examples/install_requirements.sh classify_image.py