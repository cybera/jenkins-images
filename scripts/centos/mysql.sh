sudo tee <<EOF /etc/yum.repos.d/MariaDB.repo > /dev/null
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF

sudo yum -y install MariaDB-server MariaDB-client

sudo tee <<EOF /etc/my.cnf.d/server.cnf >/dev/null
[server]

[mysqld]
bind-address = 127.0.0.1

[embedded]

[mariadb]

[mariadb-10.1]

EOF

sudo systemctl enable mariadb
sudo systemctl start mariadb

