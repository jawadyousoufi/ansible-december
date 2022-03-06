#!/bin/bash
sudo echo deb http://repo.r1soft.com/apt stable main >> /etc/apt/sources.list
sudo wget http://repo.r1soft.com/r1soft.asc
sudo apt-key add r1soft.asc 
sudo apt-get update 
sudo apt-get install serverbackup-enterprise  -y
sudo serverbackup-setup --user root --pass    redhat  
sudo serverbackup-setup --http-port 80 --https-port 443 
sudo systemctl restart sbm-server.service
systemctl status sbm-server.service

