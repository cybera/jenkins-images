sudo tee <<EOF /etc/yum.repos.d/mongodb.repo > /dev/null
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc<Paste>
EOF

sudo yum -y install mongodb-org python2-pip

sudo systemctl enable mongod
sudo systemctl start mongod

