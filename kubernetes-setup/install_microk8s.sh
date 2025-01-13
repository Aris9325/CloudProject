#!/bin/bash
# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install MicroK8s
sudo snap install microk8s --classic

# Add user to MicroK8s group
sudo usermod -aG microk8s $USER
sudo chown -f -R $USER ~/.kube

# Enable necessary add-ons
microk8s enable dns storage ingress helm3

# Create namespace
microk8s kubectl create namespace cloud-project

echo "MicroK8s setup complete. Log out and log back in to apply changes."
