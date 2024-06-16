# add user after fresh linux installation
apt update && apt upgrade
apt insall sudo
adduser xy
usermod -aG sudo xy
exit

# install ssh server
sudo apt install openssh-server
sudo systemctl status ssh
sudo service ssh start/enable
sudo service ssh stop/disable