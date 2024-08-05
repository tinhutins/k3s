#!/bin/bash

export NEEDRESTART_MODE=a

# fix error dpkg was interrupted
dpkg --configure -a

# Install required dependencies
echo "Installing required dependencies..."
sudo apt-get install -y software-properties-common

# Add new repository for newer Python versions
echo "Adding deadsnakes PPA for newer Python versions..."
sudo add-apt-repository ppa:deadsnakes/ppa -y

# Update repositories again
echo "Updating repositories after adding new PPA..."
sudo apt-get update -y

# Install desired new Python version and new Python venv version
echo "Installing Python 3.11 and python3.11-venv..."
sudo apt-get install -y python3.11 python3.11-venv

# Create a new virtual environment with the new Python version
echo "Creating a new virtual environment with Python 3.11..."
python3.11 -m venv k3s-venv

# Activate the virtual environment
echo "Activating the virtual environment..."
source k3s-venv/bin/activate

# Install required packages within the virtual environment
echo "Installing required packages..."
apt-get install git
pip install kubernetes

cd ansible/
# Install Ansible requirements
echo "Installing pip packages from requirements.txt..."
pip3 install -r requirements.txt

echo "Installing Ansible roles from requirements-galaxy.yml..."
ansible-galaxy install -r requirements-galaxy.yml

#Deploy k3s, monitoring, and load test with ansible
ansible-playbook -i inventory/inventory_k3s.ini install.yml --tags k3s