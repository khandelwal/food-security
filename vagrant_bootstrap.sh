#Provision a development environment. 

sudo printf "deb http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list
sudo printf "deb-src http://downloads.skewed.de/apt/xenial xenial universe" >> /etc/apt/sources.list


# Get the box upto date and install the packages we need
sudo apt-get update -y
sudo apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25
sudo apt-get install -y python3-dev
sudo apt-get install -y git
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-graph-tool

sudo pip3 install --quiet virtualenv
sudo pip3 install --quiet virtualenvwrapper

# Configure virtualenv, virtualenvwrapper
mkdir -p ~vagrant/.virtualenvs
chown vagrant:vagrant ~vagrant/.virtualenvs
printf "\n\n# Virtualenv settings\n" >> ~vagrant/.bashrc
printf "export WORKON_HOME=~vagrant/.virtualenvs\n" >> ~vagrant/.bashrc
printf "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3\n" >> ~vagrant/.bashrc

printf "source /usr/local/bin/virtualenvwrapper.sh\n" >> ~vagrant/.bashrc
