#!/bin/bash

if [ -f /etc/debian_version ]; then
    echo "Ubuntu detected"
    sudo apt update
    sudo apt install -y curl git docker.io
elif [ -f /etc/redhat-release ]; then
    echo "CentOS detected"
    sudo yum install -y curl git docker
else
    echo "Unsupported OS"
fi