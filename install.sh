#! /bin/bash

# Set up symlinks
ln -nfs "$(pwd)/zsh/.zshrc"             "$HOME/.zshrc"
ln -nfs "$(pwd)/zsh/.zsh"               "$HOME/.zsh"

ln -nfs "$(pwd)/.tmux.conf"               "$HOME/.tmux.conf"
ln -nfs "$(pwd)/.Xmodmap"               "$HOME/.Xmodmap"

ln -nfs "$(pwd)/i3/config"         "$HOME/.config/i3/config"

OMZ_DIR="$HOME/.oh-my-zsh"
if [ -d "$OMZ_DIR" ]; then
  ln -nfs "$(pwd)/zsh/prompt.zsh-theme"   "$HOME/.oh-my-zsh/themes/prompt.zsh-theme"
  ZSH_THEME="prompt"
fi

ln -nfs "$(pwd)/atom/config.cson"       "$HOME/.atom/config.cson"
ln -nfs "$(pwd)/atom/snippets.cson"      "$HOME/.atom/snippets.cson"
ln -nfs "$(pwd)/atom/styles.less"       "$HOME/.atom/styles.less"
ln -nfs "$(pwd)/atom/keymap.cson"       "$HOME/.atom/keymap.cson"

# Git config
ln -nfs "$(pwd)/git/.gitignore_global"  "$HOME/.gitignore_global"
git config --global user.email "david.kranewitter@gmail.com"
git config --global user.name "David Kranewitter"
git config --global core.excludesfile "$HOME/.gitignore_global"
git config --global color.diff always
git config --global rebase.autosquash true

source atom/atom-packages.sh
source $HOME/.zshrc

echo -e "\nDotfiles installed 🚀"
