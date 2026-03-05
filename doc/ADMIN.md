## Configuration

All snac2 server settings can be configured through the YunoHost admin panel under **Apps > snac2 > Config Panel**.

## CLI Commands

A `snac-admin` wrapper is installed for convenience. Run commands as the snac user:

```bash
# Add a new user
snac-admin adduser username

# List users
snac-admin userlist

# Reset a user's password
snac-admin resetpwd username

# Check and purge old data
snac-admin purge
```

## Data Location

All snac2 data (user accounts, posts, media) is stored in `__DATA_DIR__/`. This directory is preserved on app removal unless `--purge` is used.

## Logs

Logs are available at `/var/log/__ID__/__ID__.log`.
