## Configuration

Tous les paramètres du serveur snac2 peuvent être configurés via le panneau d'administration YunoHost sous **Apps > snac2 > Panneau de configuration**.

## Commandes CLI

Un script `snac-admin` est installé pour simplifier l'utilisation. Exécutez les commandes en tant qu'utilisateur snac :

```bash
# Ajouter un nouvel utilisateur
snac-admin adduser nom_utilisateur

# Lister les utilisateurs
snac-admin userlist

# Réinitialiser le mot de passe d'un utilisateur
snac-admin resetpwd nom_utilisateur

# Vérifier et purger les anciennes données
snac-admin purge
```

## Emplacement des données

Toutes les données snac2 (comptes utilisateurs, publications, médias) sont stockées dans `__DATA_DIR__/`. Ce répertoire est conservé lors de la suppression de l'app sauf si `--purge` est utilisé.

## Journaux

Les journaux sont disponibles à `/var/log/__ID__/__ID__.log`.
