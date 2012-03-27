#!/bin/sh

DOTFILES="$HOME/dotfiles"

if [ ! -d "$DOTFILES" ]
then
  echo "Please make directory $DOTFILES"
  exit
fi

cd $DOTFILES

git submodule update --init

rm -rf $HOME/.bashrc $HOME/.gemrc $HOME/.gitconfig $HOME/.profile $HOME/.vimrc $HOME/.vim $HOME/.conkyrc $HOME/scripts  $HOME/.fonts

ln -s $DOTFILES/dot.bashrc $HOME/.bashrc
ln -s $DOTFILES/dot.gemrc $HOME/.gemrc
ln -s $DOTFILES/dot.gitconfig $HOME/.gitconfig
ln -s $DOTFILES/dot.profile $HOME/.profile
ln -s $DOTFILES/dot.vimrc $HOME/.vimrc
ln -s $DOTFILES/vimfiles $HOME/.vim
ln -s $DOTFILES/dot.conkyrc $HOME/.conkyrc
ln -s $DOTFILES/conkyfiles/scripts $HOME/scripts
ln -s $DOTFILES/conkyfiles/.fonts $HOME/.fonts
touch $HOME/weather

#vim -c ':BundleInstall!'
