#!/bin/bash

# Vérification si l'utilisateur est root
if [ "$EUID" -ne 0 ]; then
  echo "Ce script doit être exécuté en tant que root. Utilisez su."
  exit 1
fi

# Mise à jour des dépôts
apt update
apt upgrade

# Installation des paquets de base
apt install -y wget sudo htop screen netstat openssh-server unzip curl net-tools

# Activation du SSH
service ssh start

# Configuration supplémentaire si nécessaire

echo -e "L'installation des paquets est terminée.\nFaites \e[36mchmod +x install.sh\e[0m.\nPuis, faites \e[36m./install.sh\e[0m"