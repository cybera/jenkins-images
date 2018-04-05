sudo tee <<EOF /etc/yum.repos.d/mongodb.repo > /dev/null
[mongodb-org-3.6]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.6/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc
EOF

sudo yum -y update
sudo yum -y install mongodb-org python2-pip

sudo systemctl enable mongod
sudo systemctl start mongod
