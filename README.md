# Python-For-Asteroids
SXSW Workshop repository

## Setting up the ipdisplay script and service
In order to have the IP address printed to a serial display on boot, the systemd service must be enabled. Move or copy the `ipdisp.service` file into the `/etc/systemd/system` folder.

Once the file is inplace run the command

```
sudo systemctl enable ipdisp.service
```
The boot service is now enabled

