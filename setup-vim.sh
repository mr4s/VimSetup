#!/bin/bash

sudo apt update
mkdir ~/.config
mkdir ~/.config/nvim
cp init.vim ~/.config/nvim/
cp init.vim ~/.local/share/nvim/

(cd ~/.local/share/nvim/
#cd ~/.config/nvim/
sudo apt install neovim
sudo apt install curl
sudo apt install git
sudo apt install python3-pip
sudo apt install build-essential
sudo apt-get update && apt-get install vim && apt-get install neovim
sudo apt install exuberant-ctags
sudo apt install nodejs
sudo apt install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable)

(cd  ~/.local/share/nvim/plugged/coc.nvim && sudo npm install -g yarn && sudo yarn install --ignore-engines && sudo yarn build --ignore-engines)

pip3 install jedi

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

