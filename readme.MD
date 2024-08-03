# Automated K3s, Nginx, Monitoring Setup and k6 load test

This GitHub repository contains a Bash script and an Ansible playbook to automate the setup of a K3s Kubernetes cluster, deploy an Nginx, set up monitoring with Prometheus and Grafana and do a load test on nginx.

## Prerequisites

- Ubuntu 22.04 system

## Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/tinhutins/k3s.git
   ```bash
   cd k3s
   
2. Run the installation script:
    ```bash
    ./install.sh

This script will automatically handle everything, including:
 - Installing K3s 
 - Deploying Nginx 
 - Setting up monitoring with Prometheus and Grafana 
 - Configuring port forwarding for Grafana and Prometheus 
 - Running a k6 load test on the Nginx service

Structure 
 - install.sh: The main Bash script that setup env and triggers the Ansible playbook.
 - install.yml: The Ansible Role containing all tasks for the setup.
 - files/: Directory containing Kubernetes configuration files.

Virtual Environment
 - Ansible is installed into a virtual environment to avoid tampering with the system's Python packages.

Setup Duration
 - The script takes about 15 minutes to finish installing everything.

Accessing Services
 - Nginx: Available on http://localhost:8080
 - Prometheus: Available on http://localhost:9090
 - Grafana: Available on http://localhost:3000
    - Username: admin
    - Password: admin
Notes
 - Ensure that ports 8080, 9090, and 3000 are not used by other services on your system.
 - This playbook is intended for and tested on Ubuntu 22.04. Running on other versions or distributions may require additional adjustments.