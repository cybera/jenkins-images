echo "Installing unzip"
sudo apt-get install -u unzip

echo "Installing packer"
curl -L https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_linux_amd64.zip >/tmp/packer.zip &&
    echo "...Unzipping packer"
    unzip /tmp/packer.zip -d /tmp &&
    echo "...Making in executable"
    chmod +x /tmp/packer &&
    echo "...Copying into bin"
    sudo cp /tmp/packer /usr/local/bin/packer &&
    echo "...Cleaning up temp files"
    rm -r /tmp/packer /tmp/packer.zip
