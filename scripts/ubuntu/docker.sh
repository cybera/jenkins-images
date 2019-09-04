sudo apt install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt update
sudo apt install -y docker-ce docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` >/tmp/docker-compose && 
    chmod +x /tmp/docker-compose &&
    sudo cp /tmp/docker-compose /usr/local/bin/docker-compose &&
    rm /tmp/docker-compose
