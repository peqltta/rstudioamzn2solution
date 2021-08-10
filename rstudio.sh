#!/bin/bash
echo "Enter username for Rstudio-server"
read rstudiousr
echo "Enter password for Rstudio-server"
read rstudiopasswd
sudo yum -y update
sudo yum -y install R
sudo yum -y install openssl098e
sudo useradd $rstudiousr
echo $rstudiopasswd | sudo passwd --stdin $rstudiousr
sudo yum -y install curl-devel
wget https://download2.rstudio.org/server/centos7/x86_64/rstudio-server-rhel-1.4.1717-x86_64.rpm # MUST UPDATE for latest (can be done within rstudio)
sudo yum -y install rstudio-server-rhel-1.4.1717-x86_64.rpm # same
sudo rstudio-server verify-installation # should state already running
dig +short myip.opendns.com @resolver1.opendns.com
echo "port 8787, configure security group"