#!/bin/bash

# Script that will list docker containers and start and attach to the ansible container used in the ELK Project

# Command to list the docker containers
sudo docker container list -a

# Command to start the container with the ID name used in project
# Requires sudo to run Docker with root
sudo docker start e41d2956fb64

# Command to attach to the ansible container
sudo docker attach e41d2956fb64