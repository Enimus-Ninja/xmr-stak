#!/bin/sh -ex 
sudo apt update --force-yes 
 
sudo apt --assume-yes update -y 
 
sudo apt-get --assume-yes install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano dos2unix sshpass 
 


