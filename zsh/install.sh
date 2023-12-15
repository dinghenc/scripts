#!/usr/bin/env bash

if [[ $(echo $SHELL | grep -w zsh) == "" ]]; then
  echo "need run chsh -s /bin/zsh"
  exit 1
fi

mkdir -p ~/.zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O ~/.zsh/install.sh
RUNZSH=no sh ~/.zsh/install.sh

CUSTOM=~/.oh-my-zsh/custom

git clone https://github.com/zsh-users/zsh-autosuggestions ${CUSTOM}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${CUSTOM}/plugins/zsh-syntax-highlighting

sed -i "s/^plugins=(git)$/plugins=(git z zsh-autosuggestions zsh-syntax-highlighting colored-man-pages history-substring-search)/" ~/.zshrc

zsh -l
