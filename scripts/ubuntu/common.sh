sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git default-jre software-properties-common build-essential

sudo rm -rf /{root,home/ubuntu}/{.ssh,.bash_history} && history -c
