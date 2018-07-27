#!/bin/bash

#apt-get update
#apt-get -y install apt-transport-https ca-certificates curl software-properties-common

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#apt-get update
#apt-get -y install docker-ce

git clone https://github.com/kaushikc92/MagickTable.git
cd MagickTable
docker build -t magicktable .
docker login --username=$DOCKER_USER --password=$DOCKER_PASS
docker tag magicktable kaushikc92/magicktable:v5
docker push kaushikc92/magicktable:v5


