#!/bin/bash
# Répertoire de sauvegarde

BACKUP_DIR="/backup/sensitive_files"
# Liste des fichiers à sauvegarder
FILES=("/etc/passwd" "/etc/shadow")

# Crée le répertoire de sauvegarde s'il n'existe pas
mkdir -p "$BACKUP_DIR"

# Boucle à travers chaque fichier
for FILE in "${FILES[@]}"; do
    # Vérifie si le fichier existe
    if [[ -e $FILE ]]; then
        # Copie le fichier dans le répertoire de sauvegarde
        cp "$FILE" "$BACKUP_DIR/"
        echo "Sauvegarde de $FILE dans $BACKUP_DIR."
    else
        echo "Avertissement : $FILE n'existe pas."
    fi
done

# Affiche un message de fin
echo "Sauvegarde terminée."