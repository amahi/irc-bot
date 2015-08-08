#!/bin/bash
sudo apt-get update
sudo apt-get install -y python-pip git wget tar zip unzip
sudo pip install -r https://raw.githubusercontent.com/ProgVal/Limnoria/master/requirements.txt --upgrade
sudo pip install git+https://github.com/ProgVal/Limnoria.git@master --upgrade
wget https://pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.tar.gz
tar xvzf GitPython-0.3.2.tar.gz
cd GitPython-0.3.2
sudo python setup.py install
cd
sudo rm -rf GitPython*
wget 2pro.co.nz/AmahiWorld.tar
tar xvf AmahiWorld.tar
rm -rf AmahiWorld.tar