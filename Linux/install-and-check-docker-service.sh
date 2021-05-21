#!/bin/bash

# Script that will install the service docker and check to see if the service is running
# Docker commands require sudo to run

# Updating the images first before installing docker.io
apt-get update

# Command to install docker.io
sudo apt install docker.io

# Command to verify that the service docker is running
sudo systemctl status docker

# Command that will start the service if it is not already running
sudo systemctl start docker