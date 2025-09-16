#!/bin/bash

cp -r dots/. ~/

sudo apt update
sudo apt install curl -y
sudo apt install git -y
sudo apt install htop -y

sudo apt install zsh -y
KEEP_ZSHRC=true RUNZSH=false sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zaw.git ~/.oh-my-zsh/custom/plugins/zaw

bash -c "$(curl --silent https://raw.githubusercontent.com/thoughtworks/talisman/main/global_install_scripts/install.bash)"
