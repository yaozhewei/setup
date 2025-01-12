#!/bin/bash


sudo apt-get update

LIBS='libgoogle-glog-dev libgflags-dev libopencv-dev libpython-dev libpython3-dev python-numpy libprotobuf-dev libboost-dev libboost-filesystem-dev libboost-random-dev libboost-system-dev libboost-timer-dev libboost-date-time-dev libboost-log-dev libboost-thread-dev clang cmake htop protobuf-compiler vim-python-jedilibhiredis-dev ctags'

sudo apt-get install -y $LIBS


sudo cp .tmux.conf ~
sudo cp .bashrc ~
sudo cp .profile ~

pip install -r ./requirements.txt --user
pip install --extra-index-url https://developer.download.nvidia.com/compute/redist/cuda/10.0 nvidia-dali --user
pip install torch==1.0 -f https://download.pytorch.org/whl/cu100/stable --user
pip install torchvision==0.2.1 --user

# install cvpack ...
cd ~/.local/lib/python3.7/site-packages
ln -s /rscratch/tyz/tylib/tylib/ ./
ln -s /rscratch/tyz/cvpack/cvpack/ ./


cd ~/
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh


