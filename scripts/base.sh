#!/bin/bash

# add java repo
add-apt-repository ppa:webupd8team/java -y
apt update  
DEBIAN_FRONTEND=noninteractive apt upgrade -yq
echo debconf shared/accepted-oracle-license-v1-1 select true | \
debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
debconf-set-selections

# install java
apt install oracle-java8-installer -y


