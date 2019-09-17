echo "Updating package lists"
sudo apt-get update
echo "Upgrading"
sudo apt-get upgrade -y
echo "Installing git default-jre software-properties-common build-essential"
sudo apt-get install -y git default-jre software-properties-common build-essential

echo "Cleaning up history files"
sudo rm -rf /{root,home/ubuntu}/{.ssh,.bash_history} && history -c
