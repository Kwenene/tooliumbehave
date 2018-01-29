FROM Ubuntu:16.04

RUN apt-get update -qqy && rm -rf /var/lib/apt/lists/* /var/cache/apt/*
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y git apt-utils apt-transport-https software-properties-common python-setuptools python-pip
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install wheel
RUN pip install python2
RUN pip install toolium
RUN pip install behave


