## Configuration

Tous les paramètres du serveur snac2 peuvent être configurés via le panneau d'administration YunoHost sous **Apps > snac2 > Panneau de configuration**.

## Commandes CLI

Vous pouvez gérer votre instance snac2 depuis la ligne de commande :

```bash
# Ajouter un nouvel utilisateur
sudo -u __ID__ __INSTALL_DIR__/snac adduser __DATA_DIR__ nom_utilisateur

# Lister les utilisateurs
sudo -u __ID__ __INSTALL_DIR__/snac userlist __DATA_DIR__

# Réinitialiser le mot de passe d'un utilisateur
sudo -u __ID__ __INSTALL_DIR__/snac resetpwd __DATA_DIR__ nom_utilisateur

# Vérifier et purger les anciennes données
sudo -u __ID__ __INSTALL_DIR__/snac purge __DATA_DIR__
```

## Emplacement des données

Toutes les données snac2 (comptes utilisateurs, publications, médias) sont stockées dans `__DATA_DIR__/`. Ce répertoire est conservé lors de la suppression de l'app sauf si `--purge` est utilisé.

## Journaux

Les journaux sont disponibles à `/var/log/__ID__/__ID__.log`.
