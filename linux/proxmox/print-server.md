# Proxmox Print Server VM

Because of device pass through into LXC not working for me, i used a minimal Debian Server VM. Therefore the usb printer can be passed to the VM via GUI and will persist after Node restart.

## VM Image

The VM image can be found here `https://www.debian.org/CD/netinst/`. Download via proxmox `Download from URL` under `ISO Images`.

Create VM and install debian. Select `minimal-server` when prompted.

After installation login as root and create user + grand `lpadmin` group access.
```
$ apt install sudo
$ adduser username
$ usermod -aG sudo
$ usermod -aG lpadmin
$ exit
```

## Cups install

Log into user account and install cups.

```
$ apt install cups
$ cupsctl --remote-admin --remote-any --share-printers
$ lpadmin -p printer -o printer-is-shared=true
```

## Driver

Install driver from Vendor page

## Configure cups
```
check for connected printer
$ lpstat -p -d
set printer default
$ lpoptions -d printer
```

## Webpage

The administration webpage can be found under `http://localhost:631`
