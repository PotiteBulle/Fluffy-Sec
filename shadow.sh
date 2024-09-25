#!/bin/bash
# Définir les fichiers à vérifier

FILES=("/etc/passwd" "/etc/shadow" "/etc/ssh/sshd_config")

# Boucle à travers chaque fichier
for FILE in "${FILES[@]}"; do
    # Vérifie si le fichier existe
    if [[ -e $FILE ]]; then
        # Obtient les permissions du fichier
        PERMISSIONS=$(stat -c "%A" "$FILE")
        
        # Affiche les permissions
        echo "Permissions de $FILE : $PERMISSIONS"
        
        # Vérifie si les permissions sont trop ouvertes
        if [[ "$PERMISSIONS" == *"rwx"* ]]; then
            echo "Alerte : Les permissions de $FILE sont trop ouvertes !"
        fi
    else
        echo "Avertissement : $FILE n'existe pas."
    fi
done