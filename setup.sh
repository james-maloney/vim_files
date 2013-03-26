#!/bin/bash

git submodule init && git submodule update
ln -s $HOME/dotfiles/vim/vim_files/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/vim/vim_files/.vim $HOME/.vim
cd $HOME/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
