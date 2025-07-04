# https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu


# create a common user used anisble [you can give as you like any name]
	sudo adduser ansible
# chare the name to identify
	sudo vi /etc/hostname
# reboot the server  
	sudo init 6
# provide sudoers permission to the user
   	sudo visudo

	ansible ALL=(ALL:ALL) NOPASSWD: ALL

# to save the file ctl+O and exist ctl+X

	sudo vi /etc/ssh/sshd_config.d/60-cloudimg-settings.conf

# change the PasswordAuthentication no to yes
	PasswordAuthentication yes

# restart the ssh service
	sudo service ssh restart

#https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu
----------------------------------------------------------
## Controller# install ansible only in COntroller Node
----------------------------------------------------------
 sudo apt update
 sudo apt install software-properties-common
 sudo add-apt-repository --yes --update ppa:ansible/ansible
 sudo apt install ansible


create folder in anylocation inside need to have ansible.cfg and hosts file

	 # ansible.cfg
[defaults]                                                                                                            
inventory      = hosts	

	# vi hosts
[dev]
172.31.23.13

[test]
172.31.18.14

[web:children]
dev
test

#  ansible --version  \\ to check the ansible version

#  ssh-keygen  \\ to create a sshkey
#  ssh-copy-id 172.31.18.14 [ip of controller]
#  ssh-copy-id 172.31.23.13 [ip of node]
