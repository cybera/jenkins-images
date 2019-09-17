sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y
sudo apt-get install -q -y git default-jre software-properties-common build-essential

sudo rm -rf /{root,home/ubuntu}/{.ssh,.bash_history} && history -c
