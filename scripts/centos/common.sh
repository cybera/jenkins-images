sudo yum -y update
sudo yum -y upgrade
sudo yum -y install wget epel-release git unzip gcc gcc-c++ make openssl-devel memcached
sudo rpm -i http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update

sudo systemctl start memcached
sudo systemctl enable memcached
sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
