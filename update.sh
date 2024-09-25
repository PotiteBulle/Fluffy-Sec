#!/bin/bash
# Met à jour la liste des paquets

echo "Mise à jour de la liste des paquets..."
sudo apt update

# Met à jour les paquets installés
echo "Mise à jour des paquets..."
sudo apt upgrade -y

# Installe les mises à jour de sécurité
echo "Installation des mises à jour de sécurité..."
sudo apt-get upgrade --only-upgrade -y

# Affiche un message de fin
echo "Mises à jour de sécurité installées avec succès !"