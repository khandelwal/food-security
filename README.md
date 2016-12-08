# Food Security
A personal project on networks and food security. 

# Installation + Configuration

This uses [Vagrant](https://www.vagrantup.com/) (and VirtualBox) under the hood
to configure and setup the box that you can use to develop and run the code. 

Start the machine:
vagrant up

SSH into the machine:
vagrant ssh

The vagrant provisioning script will install graph-tool
The vagrant provisioning script will also install git, but not configure it (so you'll have to set that up). 
