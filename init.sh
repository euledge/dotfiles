#!/bin/sh

DOTFILES="$HOME/dotfiles"

if [ ! -d "$DOTFILES" ]
then
  echo "Please make directory $DOTFILES"
  exit
fi

cd $DOTFILES

git submodule update --init

rm -rf $HOME/.bashrc $HOME/.gemrc $HOME/.gitconfig $HOME/.profile $HOME/.vimrc $HOME/.vim $HOME/scripts  $HOME/.fonts
rm -rf $HOME/.zshrc $HOME/.zlogin $HOME/.zshenv

ln -s $DOTFILES/dot.bashrc $HOME/.bashrc
ln -s $DOTFILES/dot.zshrc $HOME/.zshrc
ln -s $DOTFILES/dot.zlogin $HOME/.zlogin
ln -s $DOTFILES/dot.zshenv $HOME/.zshenv
ln -s $DOTFILES/dot.gemrc $HOME/.gemrc
ln -s $DOTFILES/dot.gitconfig $HOME/.gitconfig
ln -s $DOTFILES/dot.profile $HOME/.profile

# Ruby,PHP Enviroment
git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
git clone https://github.com/sstephenson/ruby-build.git  $HOME/.rbenv/plugins/ruby-build
#git clone https://github.com/php-build/php-build.git

# Vim Setting
cd $DOTFILES
ln -s $DOTFILES/dot.vimrc $HOME/.vimrc
ln -s $DOTFILES/vimfiles $HOME/.vim
ln -s $DOTFILES/syntax $DOTFILES/vimfiles/syntax
#vim -c ':BundleInstall!'
