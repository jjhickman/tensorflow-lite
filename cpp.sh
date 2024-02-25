#!/bin/bash
set -ex
TOTAL_CORES=$(grep -c ^processor /proc/cpuinfo)
NUM_BUILD_CORES=$(( $TOTAL_CORES / 2 ))

git clone https://github.com/tensorflow/tensorflow.git tensorflow_src
cp CMakeLists.txt tensorflow_src/tensorflow/lite/tools/cmake/modules/ml_dtypes/CMakeLists.txt
mkdir build
cd build
cmake -DXNNPACK_ENABLE_ARM_BF16=OFF -DXNNPACK_ENABLE_ARM_I8MM=OFF ../tensorflow_src/tensorflow/lite
cmake --build . -j $NUM_BUILD_CORES --target install
cmake --build . -j $NUM_BUILD_CORES -t benchmark_model --target install
cmake --build . -j $NUM_BUILD_CORES -t label_image --target install
rm -rf ../tensorflow_src
cd ..
rm -rf build

#wget -O - https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor | tee /etc/apt/trusted.gpg.d/coral-edgetpu.gpg
#git clone --recurse-submodules https://github.com/google-coral/libcoral
#cd libcoral
#git submodule init
#git submodule update
#make -j $NUM_BUILD_CORES
#make install
#cd ..
#rm -rf libcoral