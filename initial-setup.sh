#!/bin/bash
sudo apt-get update -y
sudo apt install default-jdk default-jre
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c "echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list"
sudo apt update
# if having cerificate issue after update install the ca-certificate, else proceed to install jenkins
sudo apt install ca-certificates
sudo apt install jenkins
sudo /etc/init.d/jenkins start
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl start nginx
sudo systemctl enable jenkins
sudo systemctl status jenkins
