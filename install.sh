#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks
mkdir ~/.dotfiles
ln -sfv "$DOTFILES_DIR/shell/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/shell/.aliases" ~/.dotfiles
ln -sfv "$DOTFILES_DIR/shell/.bash_prompt" ~/.dotfiles
ln -sfv "$DOTFILES_DIR/shell/.functions" ~/.dotfiles
ln -sfv "$DOTFILES_DIR/shell/.exports" ~/.dotfiles
ln -sfv "$DOTFILES_DIR/shell/.dircolors" ~/.dotfiles

ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/npm.sh"


# change to bash 4 (installed by homebrew)
#BASHPATH=$(brew --prefix)/bin/bash
#sudo echo $BASHPATH >> /etc/shells
#sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
#chsh -s $BASHPATH # will set for current user only.
#echo $BASH_VERSION # should be 4.x not the old 3.2.X
