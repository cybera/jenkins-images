sudo yum -y update
sudo yum -y upgrade
sudo yum -y install epel-release git unzip gcc gcc-c++ make openssl-devel
sudo rpm -i http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update

sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
