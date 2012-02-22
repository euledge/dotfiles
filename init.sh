#!/bin/sh

DOTFILES="$HOME/dotfiles"

if [! -d "$DOTFILES" ]
then
  echo "Please make directory $DOTFILES"
  exit
fi

cd $DOTFILES

git submodule update --init

rm rf .bashrc .gemrc .gitconfig .profile .vimrc .vim

ln -s $DOTFILES/dot.bashrc $HOME/.bashrc
ln -s $DOTFILES/dot.gemrc $HOME/.gemrc
ln -s $DOTFILES/dot.gitconfig $HOME/.gitconfig
ln -s $DOTFILES/dot.profile $HOME/.profile
ln -s $DOTFILES/dot.vimrc $HOME/.vimrc
ln -s $DOTFILES/vimfiles $HOME/.vim

vim -c ':BundleInstall!'
