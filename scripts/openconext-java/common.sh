sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install wget git unzip build-essential software-properties-common

sudo tee <<EOF /etc/cloud/cloud.cfg.d/01_hostname.cfg
#cloud-config
manage_etc_hosts: true
EOF

sudo mkdir -p /repository/{maven,php}
sudo chmod -R 777 /repository
sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
