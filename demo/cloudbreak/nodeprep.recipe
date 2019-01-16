#!/bin/bash

#  Run Prior to Cluster Install 


######################################################################################################
#
#   Dependancies
#
######################################################################################################

yum install -y epel-release
yum update -y

yum install -y wget
yum install -y unzip
yum install -y net-tools
yum install -y git


######################################################################################################
#
#   Install Anaconda / Tensorflow / Keras
#
######################################################################################################


ANACONDA_URL=https://repo.continuum.io/archive/Anaconda2-5.0.0.1-Linux-x86_64.sh


curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
rm get-pip.py
yum -y install bzip2
echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
wget --quiet ${ANACONDA_URL} -O ~/anaconda.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
rm ~/anaconda.sh

/opt/conda/bin/pip install keras
/opt/conda/bin/pip install tensorflow
/opt/conda/bin/pip install scipy --upgrade

#ln -sf /opt/conda/bin/python2.7 /bin/python


######################################################################################################
#
#   Install Docker
#
######################################################################################################


yum -y install docker
service docker start 

######################################################################################################
#
#   Install Demo
#
######################################################################################################


mkdir /demo
cd /demo
git clone https://github.com/hortonworks-sk/HDP-3.0-classifying-melanoma.git

mv HDP-3.0-classifying-melanoma/demo/* /demo
rm -rf HDP-3.0-classifying-melanoma
chmod -R 777 /demo


######################################################################################################
#
#  Build Docker Image
#
######################################################################################################



docker build /demo/docker -t centos/tensorflow:melanoma 

