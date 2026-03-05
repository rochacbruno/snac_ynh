snac2 utilise un système de stockage basé sur des fichiers qui repose sur les liens durs (hard links). Le répertoire de données doit être sur un système de fichiers prenant en charge les hard links (ext4, xfs, btrfs — standard sur YunoHost).

L'application est compilée à partir du code source lors de l'installation, ce qui peut prendre quelques minutes selon le matériel de votre serveur.

**snac2 ne prend pas en charge LDAP ni SSO.** Les comptes utilisateurs sont gérés indépendamment de YunoHost, via le système d'authentification intégré de snac. Vous pouvez gérer les utilisateurs en ligne de commande (`snac-admin adduser`, `snac-admin resetpwd`).
