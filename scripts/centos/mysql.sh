sudo tee <<EOF /etc/yum.repos.d/MariaDB.repo > /dev/null
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF

sudo yum -y install MariaDB-server MariaDB-client
sudo systemctl enable mariadb
sudo systemctl start mariadb

