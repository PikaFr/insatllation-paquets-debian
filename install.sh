#!/bin/bash

# Checking if the user is root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root. Use \e[36msu\e[0m"
  exit 1
fi

# Updating repositories
apt update
apt upgrade

# Installing basic packages
apt install -y sudo htop screen netstat openssh-server unzip curl net-tools

# Enabling SSH
service ssh start

echo -e "Package installation is complete.\nDo \e[36mchmod +x install.sh\e[0m.\nThen, do \e[36m./install.sh\e[0m"
