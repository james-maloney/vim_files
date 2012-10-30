#!/bin/bash

git submodule init && git submodule update
ln -s $HOME/vim_files/.vimrc $HOME/.vimrc
ln -s $HOME/vim_files/.vim $HOME/.vim
cd $HOME/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
