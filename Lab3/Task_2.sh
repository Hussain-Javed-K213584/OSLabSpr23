#! /bin/bash

# Install Samba

if [[ $EUID -ne 0]]; then
	echo "Script must run as sudo!"
	exit 1
fi
echo "Installing samba..."
apt install samba -y
systemctl enable smbd.service
systemctl start smbd.service
echo "Samba has been installed..."
echo "Making the sharing folder..."
mkdir $HOME/sharingFolder
echo "Created user with username: user1"
echo "Enter password for user1"
useradd user1
smbpasswd -a user1
printf "\n[sharingFolder]\n  path = $HOME/sharingFolder\n  valid users = user1
\n  read list = user1\n  write list = user1\n  browseable = yes\n" >> /etc/samba/smb.conf

