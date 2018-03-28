FROM resin/rpi-raspbian:jessie

RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y \
    build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    zip \
    vim \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libgtk-3-dev \
    libatlas-dev \
    libavcodec-dev \
    libavformat-dev \
    libboost-all-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    python3-scipy \
    python3-pip

RUN apt-get clean

RUN pip3 install numpy
RUN pip3 install Pillow
RUN pip3 install scipy
RUN pip3 install scikit-learn
RUN pip3 install scikit-image
RUN pip3 install dlib
RUN pip3 install face_recognition
