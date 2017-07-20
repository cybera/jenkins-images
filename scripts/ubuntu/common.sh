sudo apt update
sudo apt upgrade -y
sudo apt install -y git default-jre software-properties-common build-essential

sudo rm -rf /{root,home/ubuntu}/{.ssh,.bash_history} && history -c
