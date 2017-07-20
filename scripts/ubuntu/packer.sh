sudo apt install -u unzip

curl -L https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_linux_amd64.zip >/tmp/packer.zip &&
    unzip /tmp/packer.zip -d /tmp &&
    chmod +x /tmp/packer &&
    sudo cp /tmp/packer /usr/local/bin/packer &&
    rm -r /tmp/packer /tmp/packer.zip
