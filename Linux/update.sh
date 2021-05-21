#!/bin/bash

# Make sure to execute script by chmod +x ./(name of script).sh

# Script designed to destroy existing virtual machine to build up an updated clean newer VM

vagrant box update && vagrant destroy --force && vagrant up && vagrant box prune
