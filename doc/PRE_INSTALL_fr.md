snac2 utilise un système de stockage basé sur des fichiers qui repose sur les liens durs (hard links). Le répertoire de données doit être sur un système de fichiers prenant en charge les hard links (ext4, xfs, btrfs — standard sur YunoHost).

L'application est compilée à partir du code source lors de l'installation, ce qui peut prendre quelques minutes selon le matériel de votre serveur.

- **snac2 ne prend pas en charge LDAP ni SSO.** Les comptes utilisateurs sont gérés indépendamment de YunoHost, via le système d'authentification intégré de snac. Vous pouvez gérer les utilisateurs en ligne de commande (`snac-admin adduser`, `snac-admin resetpwd`).
- **Le domaine et le chemin sont permanents.** Vous ne pourrez pas changer le sous-domaine ou le chemin une fois snac2 installé. Les identités ActivityPub sont liées à leur URL.
- **La combinaison domaine/chemin est définitivement réservée.** Une fois que votre instance a fédéré, vous ne pourrez pas réutiliser le même domaine et chemin pour héberger un autre service ActivityPub.
- **L'interface intégrée est minimaliste et sans JavaScript.** Vous pouvez tout faire (publier, partager, aimer, lire le fil, notifications, etc.) mais l'interface est volontairement simple. Vous pouvez utiliser n'importe quel client compatible Mastodon comme Phanpy, Elk, Moshidon, Tusky, etc.
- **Vous pouvez personnaliser l'apparence de votre instance** en modifiant `__DATA_DIR__/style.css`. Une collection de thèmes partagés est disponible sur [codeberg.org/voron/snac-style](https://codeberg.org/voron/snac-style).
- **Plusieurs instances sont possibles** sur des domaines différents (ex. `domaine1.tld` et `domaine2.tld`). Cependant, une seule instance snac2 peut être installée par domaine, car les points d'accès de fédération ActivityPub (WebFinger, NodeInfo, API Mastodon) doivent être gérés par une seule instance par domaine.
