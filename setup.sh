# ubuntu:16.04
# setup host
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    openssh-server \
    python3-pip \
    python3-software-properties \
    software-properties-common \
    vim

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt update && sudo apt upgrade -y

sudo apt install -y docker-ce

pip3 install --upgrade pip

pip install --user docker

sudo usermod -aG docker $USER

sudo reboot
