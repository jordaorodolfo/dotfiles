#!/bin/bash
sudo apt install -y  emacs
sudo apt install -y  neovim
sudo apt install -y  python3
sudo apt install -y  python3-neovim
sudo apt install -y  git
sudo apt install -y  build-essential
sudo apt install -y  network-manager
sudo apt install -y  curl
sudo apt install -y  wget
sudo apt install -y  ranger
sudo apt install -y  fasd
sudo apt install -y  zsh
sudo apt install -y  acpi

# install oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.local/share/fonts/
mv PowerlineSymbols.otf ~/.local/share/fonts
fc-cache -vf ~/.local/share/fonts/
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
