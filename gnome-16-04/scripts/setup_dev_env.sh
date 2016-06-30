#! /bin/bash
#put dev setup here

if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

apt-get update
apt-get upgrade -y
apt-get install -y git-core git zsh build-essential python python-dev python-pip nodejs curl
apt-add-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer
apt-get install oracle-java8-set-default


sudo -u awilczek wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sudo -u awilczek zsh

sudo -u awilczek wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | sudo -u awilczek zsh


sudo -u awilczek echo "export NVM_DIR=\"/home/awilczek/.nvm\" 
[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\"" >> /home/awilczek/.zshrc
