# Install SSH Serhver 
```
sudo apt install openssh-server
sudo systemctl status ssh
sudo service ssh start / stop
sudo service ssh enable / disable
```

# Add Public Key
```
mkdir .ssh/
vim authorized_keys
	-> paste public ssh key inside
```