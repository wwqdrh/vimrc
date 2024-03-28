#!/bin/bash

sudo apt-get update && sudo apt-get install git silversearcher-ag

echo "install node for coc.nvim..."
curl -sL https://install-node.vercel.app/lts | sudo bash
echo "install node done..."

cd ~

git clone https://github.com/wwqdrh/vimrc.git .vim

pushd .vim

git submodule update --init

# 安装scripts命令
sudo cp -rf scripts/* /usr/local/bin

popd

# 更新依赖的tag点

# pushd pack/text/start/nerdcommenter

# popd

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

ln -s ~/.vim/vimrc ~/.vimrc
