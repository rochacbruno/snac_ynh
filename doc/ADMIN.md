## Configuration

All snac2 server settings can be configured through the YunoHost admin panel under **Apps > snac2 > Config Panel**.

## CLI Commands

You can manage your snac2 instance from the command line:

```bash
# Add a new user
sudo -u __ID__ __INSTALL_DIR__/snac adduser __DATA_DIR__ username

# List users
sudo -u __ID__ __INSTALL_DIR__/snac userlist __DATA_DIR__

# Reset a user's password
sudo -u __ID__ __INSTALL_DIR__/snac resetpwd __DATA_DIR__ username

# Check and purge old data
sudo -u __ID__ __INSTALL_DIR__/snac purge __DATA_DIR__
```

## Data Location

All snac2 data (user accounts, posts, media) is stored in `__DATA_DIR__/`. This directory is preserved on app removal unless `--purge` is used.

## Logs

Logs are available at `/var/log/__ID__/__ID__.log`.
