#!/bin/bash
# Symlink dotfiles into place

ln -sf ~/.dotfiles/config/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/config/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/config/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/config/.zshrc ~/.zshrc

ln -sf ~/.dotfiles/zsh/themes/amok.zsh-theme ~/.oh-my-zsh/themes/amok.zsh-theme

mkdir -p ~/.vim/colors
