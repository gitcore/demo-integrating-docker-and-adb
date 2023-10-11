FROM ubuntu:22.04
LABEL maintainer="Two Six Technologies <race@twosixlabs.com>"

RUN apt-get update -y

RUN apt install -y openssh-server && \
    service ssh start

RUN apt install -y less curl unzip

# Install Python 3.8 & Configure Python Environment
RUN apt-get install -y python3 python3-dev python3-pip
    # python3 -m pip install --upgrade --force-reinstall pip && \
    # update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1 && \
    # update-alternatives --set python /usr/bin/python3.8 && \
    # update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1 && \
    # update-alternatives --set python3 /usr/bin/python3.8 && \
    # update-alternatives --install /usr/bin/python3-config python3-config /usr/bin/python3.8-config 1 && \
    # update-alternatives --set python3-config /usr/bin/python3.8-config

# RUN python3 -m pip install setuptools && \
#     python3 -m pip install adbutils robotframework

# RUN mkdir -p /code
# WORKDIR /code

# COPY python_adb_example.py robot_adb_example.robot /code/
