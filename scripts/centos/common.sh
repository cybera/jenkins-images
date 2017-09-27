sudo yum -y update
sudo yum -y upgrade
sudo yum -y install epel-release git unzip gcc gcc-c++ make openssl-devel
sudo yum -y update

sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
