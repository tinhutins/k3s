# Automated K3s, Nginx, Monitoring Setup and k6 load test

This GitHub repository contains a Bash script and an Ansible playbook to automate the setup of a K3s Kubernetes cluster, deploy an Nginx, set up monitoring with Prometheus and Grafana and do a load test on nginx.

## Prerequisites

- Ubuntu 22.04 system

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/tinhutins/k3s.git
   cd k3s
   
2. Run the installation script:
    ```bash
    ./install.sh


This script will automatically handle everything, including:

Installing K3s < br / > 
Deploying Nginx < br / > 
Setting up monitoring with Prometheus and Grafana < br / > 
Configuring port forwarding for Grafana and Prometheus < br / > 
Running a k6 load test on the Nginx service

Structure < br / > 
install.sh: The main Bash script that setup env and triggers the Ansible playbook. < br / > 
install.yml: The Ansible Role containing all tasks for the setup. < br / > 
files/: Directory containing Kubernetes configuration files.

Note < br / > 
This playbook is intended for and tested on Ubuntu 22.04. Running on other versions or distributions may require additional adjustments.