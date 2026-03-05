snac2 uses a file-based storage system that relies on hard links. The data directory must be on a filesystem that supports hard links (ext4, xfs, btrfs — standard on YunoHost).

The app is compiled from source during installation, which may take a few minutes depending on your server's hardware.

- **snac2 does not support LDAP or SSO.** User accounts are managed independently from YunoHost, using snac's own built-in authentication. You can manage users via the command line (`snac-admin adduser`, `snac-admin resetpwd`).
- **The domain and path are permanent.** You will not be able to change the subdomain or path once snac2 has been set up. ActivityPub identities are tied to their URL.
- **The domain/path combination is permanently claimed.** Once your instance has federated, you will not be able to reuse the same domain and path to host another ActivityPub service.
- **The built-in front-end is minimalistic and JavaScript-free.** You can do everything (post, boost, like, read timeline, notifications, etc.) but the interface is intentionally simple. You can use any Mastodon-compatible client such as Phanpy, Elk, Moshidon, Tusky, etc.
- **You can customize the look of your instance** by editing `__DATA_DIR__/style.css`. A collection of shared themes is available at [codeberg.org/voron/snac-style](https://codeberg.org/voron/snac-style).
