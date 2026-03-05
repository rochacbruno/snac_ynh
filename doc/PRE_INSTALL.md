snac2 uses a file-based storage system that relies on hard links. The data directory must be on a filesystem that supports hard links (ext4, xfs, btrfs — standard on YunoHost).

The app is compiled from source during installation, which may take a few minutes depending on your server's hardware.

**snac2 does not support LDAP or SSO.** User accounts are managed independently from YunoHost, using snac's own built-in authentication. You can manage users via the command line (`snac-admin adduser`, `snac-admin resetpwd`).
