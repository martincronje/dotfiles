#!/bin/bash
# Symlink dotfiles into place

ln -sf ~/.dotfiles/config/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/config/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/config/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/config/.zshrc ~/.zshrc

ln -sf ~/.dotfiles/zsh/themes/amok.zsh-theme ~/.oh-my-zsh/themes/amok.zsh-theme

# Install vim-plug and plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall
