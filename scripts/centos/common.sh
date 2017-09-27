sudo yum -y update
sudo yum -y upgrade
sudo yum -y install wget epel-release git unzip gcc gcc-c++ make openssl-devel memcached
sudo rpm -i http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

sudo tee <<EOF /etc/yum.repos.d/remi.repo >/dev/null
[remi]
name=Les RPM de remi pour Enterprise Linux 7 - $basearch
#baseurl=http://rpms.famillecollet.com/enterprise/7/remi/$basearch/
mirrorlist=http://rpms.famillecollet.com/enterprise/7/remi/mirror
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-php55]
name=Les RPM de remi de PHP 5.5 pour Enterprise Linux 7 - $basearch
#baseurl=http://rpms.famillecollet.com/enterprise/7/php55/$basearch/
mirrorlist=http://rpms.famillecollet.com/enterprise/7/php55/mirror
# WARNING: If you enable this repository, you must also enable "remi"
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-php56]
name=Les RPM de remi de PHP 5.6 pour Enterprise Linux 7 - $basearch
#baseurl=http://rpms.famillecollet.com/enterprise/7/php56/$basearch/
mirrorlist=http://rpms.famillecollet.com/enterprise/7/php56/mirror
# WARNING: If you enable this repository, you must also enable "remi"
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-test]
name=Les RPM de remi en test pour Enterprise Linux 7 - $basearch
#baseurl=http://rpms.famillecollet.com/enterprise/7/test/$basearch/
mirrorlist=http://rpms.famillecollet.com/enterprise/7/test/mirror
# WARNING: If you enable this repository, you must also enable "remi"
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-debuginfo]
name=Les RPM de remi pour Enterprise Linux 7 - $basearch - debuginfo
baseurl=http://rpms.famillecollet.com/enterprise/7/debug-remi/$basearch/
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-php55-debuginfo]
name=Les RPM de remi de PHP 5.5 pour Enterprise Linux 7 - $basearch - debuginfo
baseurl=http://rpms.famillecollet.com/enterprise/7/debug-php55/$basearch/
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-php56-debuginfo]
name=Les RPM de remi de PHP 5.6 pour Enterprise Linux 7 - $basearch - debuginfo
baseurl=http://rpms.famillecollet.com/enterprise/7/debug-php56/$basearch/
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi

[remi-test-debuginfo]
name=Les RPM de remi en test pour Enterprise Linux 7 - $basearch - debuginfo
baseurl=http://rpms.famillecollet.com/enterprise/7/debug-test/$basearch/
enabled=0
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi
EOF

sudo yum -y update

sudo systemctl start memcached
sudo systemctl enable memcached
sudo rm -rf /{root,home/centos}/{.ssh,.bash_history} && history -c
