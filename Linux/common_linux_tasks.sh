# add user after fresh linux installation
apt update && apt upgrade

# add new root user
apt insall sudo
adduser username
usermod -aG sudo username

# remove user from group
deluser username sudo

# install ssh server
sudo apt install openssh-server
sudo systemctl status ssh
sudo service ssh start/enable
sudo service ssh stop/disable
# add public key
mkdir .ssh/
vim authorized_keys
	-> paste public ssh key inside