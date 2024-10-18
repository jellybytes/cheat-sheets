# Networking

Some basic network stuff

# Static IP

check network devices with `ip a` and note networkadapter

`$ sudo vim /etc/network/interfaces`

Look for the primary network interface enp0s5 and change to:

```
# The primary network interface
auto enp0s5
iface enp0s5  inet static
 address 192.168.2.236
 netmask 255.255.255.0
 gateway 192.168.2.254
 dns-domain sweet.home
 dns-nameservers 192.168.2.254 1.1.1.1 8.8.8.8
```

Restart the network service

```
$ sudo systemctl restart networking.service
$ sudo systemctl status networking.service
$ ip a
```