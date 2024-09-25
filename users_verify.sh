#!/bin/bash
# Définit le nombre de jours d'inactivité

DAYS=90 # timer

# Recherche les utilisateurs inactifs
echo "Recherche des utilisateurices inactifs depuis plus de $DAYS jours..."

# Utilise la commande last pour trouver les utilisateurs inactifs
lastlog | awk -v days="$DAYS" -F ' ' '$3 >= days {print $1}'

# Affiche un message de fin
echo "Vérification terminée."