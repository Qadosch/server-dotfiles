#!/bin/bash

cp -r dots/. ~/

sudo apt update
sudo apt install curl -y
sudo apt install git -y
sudo apt install htop -y

sudo apt install zsh -y
KEEP_ZSHRC=true RUNZSH=false sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zaw.git ~/.oh-my-zsh/custom/plugins/zaw

# Adding Talisman
bash -c "$(curl --silent https://raw.githubusercontent.com/thoughtworks/talisman/main/global_install_scripts/install.bash)"


# Adding griffo
# Add repository GPG key
curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/debian.griffo.io.gpg

# Add repository to sources
echo "deb https://debian.griffo.io/apt $(lsb_release -sc 2>/dev/null) main" | sudo tee /etc/apt/sources.list.d/debian.griffo.io.list

# Update package list
sudo apt update

sudo apt install -y ghostty      # Modern terminal emulator
sudo apt install -y eza          # Modern ls replacement
sudo apt install -y yazi         # Terminal file manager
sudo apt install -y fzf          # Fuzzy finder
sudo apt install -y zoxide       # Smart cd command
