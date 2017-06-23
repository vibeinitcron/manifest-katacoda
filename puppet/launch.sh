#!/bin/bash

#wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
#sudo dpkg -i puppetlabs-release-trusty.deb
#sudo apt-get update -y
#sudo apt-get install puppetserver -y

mkdir code
ls
pwd
mv hello.pp manifest.pp code
docker run -itd --name puppet --hostname puppet -v code:/etc/puppetlabs/code/ puppet/puppetserver
docker exec -it puppet bash
