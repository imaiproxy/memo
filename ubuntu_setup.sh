#!/bin/bash

sudo apt update

sudo apt install -y vim
sudo apt install -y git
sudo apt install -y build-essential
sudo apt install -y python
sudo apt install -y python3
sudo apt install -y python-pip
sudo apt install -y python3-pip
sudo apt install -y curl

# x86バイナリを動かす為のパッケージ
dpkg --add-architecture i386
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt install -y gcc-multilib g++-multilib


# ELF解析用
sudo apt install -y binutils

# ROPガジェット用
wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x64 \
&& wget https://github.com/0vercl0k/rp/releases/download/v1/rp-lin-x86 \
&& chmod +x rp-lin-x64 rp-lin-x86 \
&& sudo mv rp-lin-x64 rp-lin-x86 /usr/local/bin

# リモート用
sudo apt install -y socat

# gdb-peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# pwngdb
git clone https://github.com/scwuaptx/Pwngdb.git
cp ~/Pwngdb/.gdbinit ~/ # gdbinitの設定も入ってる

# pwntools
sudo install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev3

# radare2
git clone https://github.com/radare/radare2
sudo sh radare2/sys/install.sh


# install my script
wget https://raw.githubusercontent.com/imaiproxy/memo/master/.vimrc -P ~/
wget https://raw.githubusercontent.com/imaiproxy/memo/master/.bashrc -P ~/

mkdir -p ~/usr/bin/  \
&& wget https://raw.githubusercontent.com/imaiproxy/memo/master/CD  \
&& chmod +x CD \
&& mv CD ~/usr/bin/CD

mkdir -p ~/.cache/dein && cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
