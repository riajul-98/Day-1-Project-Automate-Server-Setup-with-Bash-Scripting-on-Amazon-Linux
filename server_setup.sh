#!/bin/bash

username=$1

# Exits script if any commands fail
set -e

# Installs Dit and Docker
sudo yum update -y
sudo yum install git docker -y

# Starting and Enabling Docker Service
sudo systemctl start docker
sudo systemctl enable docker

# Provides an exit code if no command line argument (username) is provided
if [ -z "$1" ]
then
        echo "No username provided."
        exit 1
fi

# Creating user and adding sudo priviliges
echo "Creating user $username..."
sudo useradd $username
echo "$username:password" | sudo chpasswd
sudo usermod -aG wheel $username

# Installing and congifuring firewalld service
sudo yum install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

echo "Server setup on Amazon Linux is complete!"
