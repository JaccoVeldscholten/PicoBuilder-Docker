# Running with powershell:  docker run --rm -it  -v ${PWD}:/project  jjveldscholten/picobuilder bash -c 'cd build&&  ls && cmake .. && make'
# Running with CMD:         docker run --rm -it  -v %cd%:/project  jjveldscholten/picobuilder cmd /c 'cd build&&  ls && cmake .. && make'
# Running with Linux:       docker run --rm -it  -v pwd:/project  jjveldscholten/picobuilder bash -c 'cd build&&  ls && cmake .. && make'X

# Using Ubuntu 
FROM ubuntu:20.04

LABEL maintainer="Jacco Veldscholten <jjveldscholten@gmail.com>"

# Install packages and dependencies from apt repository 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y python3
RUN apt-get install -y cmake
RUN apt-get install -y git
RUN apt-get install -y libusb-1.0-0-dev
RUN apt-get install -y gcc-arm-none-eabi libnewlib-arm-none-eabi

# Cloning SDK
RUN git clone https://github.com/raspberrypi/pico-sdk.git
# Set Pico SDK
ENV PICO_SDK_PATH=/pico-sdk

# Make folder for mounting
RUN mkdir project

# Copy files to folder
VOLUME ["/project" ]

# Set work directory
WORKDIR /project