echo "Installing more kernel stuff"
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
echo "Installing apt-transport-https ca-certificates curl software-properties-common"
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
echo "Trusting docker signature"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "Adding docker apt repository"
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
echo "Updating package lists for docker"
sudo apt-get update
echo "Installing docker-ce"
sudo apt-get install -y docker-ce
echo "Adding docker group"
sudo groupadd docker
echo "Adding user to docker group"
sudo usermod -aG docker $USER
echo "Enabling docker"
sudo systemctl enable docker


echo "Installing docker-machine"
curl -L https://github.com/docker/machine/releases/download/v0.16.1/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine &&
    rm /tmp/docker-machine

echo "Installing docker-compose"
curl -L https://github.com/docker/compose/releases/download/1.24.1/docker-compose-`uname -s`-`uname -m` >/tmp/docker-compose &&
    chmod +x /tmp/docker-compose &&
    sudo cp /tmp/docker-compose /usr/local/bin/docker-compose &&
    rm /tmp/docker-compose
