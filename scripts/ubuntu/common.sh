sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y git openjdk-7-jre-headless software-properties-common build-essential

sudo rm -rf /{root,home/ubuntu}/{.ssh,.bash_history} && history -c
