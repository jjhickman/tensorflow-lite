FROM ubuntu:20.04
WORKDIR /tensorflow-lite
ENV DEBIAN_FRONTEND=noninteractive

# Dependencies for workspace
COPY bootstrap.sh .
RUN chmod +x bootstrap.sh \
  && ./bootstrap.sh

# Python API and Coral API
COPY python.sh .
RUN chmod +x python.sh \
  && ./python.sh

# C++ API
COPY CMakeLists.txt .
COPY cpp.sh .
RUN chmod +x cpp.sh \
  && ./cpp.sh

RUN rm python.sh cpp.sh bootstrap.sh CMakeLists.txt

# Python Coral examples
COPY examples.sh .
RUN chmod +x examples.sh \
  && ./examples.sh

#COPY cpp_coral.sh .
#RUN chmod +x cpp_coral.sh \
#  && ./cpp_coral.sh

# Verify Python Coral installation
CMD cd coral/pycoral \
  && python3 examples/classify_image.py \
    --model test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
    --labels test_data/inat_bird_labels.txt \
    --input test_data/parrot.jpg \
  && cd /tensorflow-lite/examples
