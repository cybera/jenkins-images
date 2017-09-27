sudo yum -y update
sudo yum -y upgrade
sudo yum -y install git unzip gcc gcc-c++ make openssl-devel

sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
