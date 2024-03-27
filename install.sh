#!/bin/bash

cd ~

git clone git@github.com:wwqdrh/vimrc.git .vim

pushd .vim

git submodule update --init

# 更新依赖的tag点

# pushd pack/text/start/nerdcommenter

# popd

ln -s ~/.vim/vimrc ~/.vimrc
