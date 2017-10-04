sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mariadb.mirror.colo-serv.net/repo/10.1/ubuntu trusty main'

sudo apt-get update
sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y mariadb-server python-mysqldb

sudo tee <<EOF /etc/my.cnf.d/server.cnf >/dev/null
[server]

[mysqld]
bind-address = 127.0.0.1

[embedded]

[mariadb]

[mariadb-10.1]

EOF
