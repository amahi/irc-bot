#!/bin/bash
sudo apt-get update
sudo apt-get install -y python-pip git wget tar zip unzip screen
sudo pip install -r https://raw.githubusercontent.com/ProgVal/Limnoria/master/requirements.txt --upgrade
sudo pip install git+https://github.com/ProgVal/Limnoria.git@master --upgrade
wget https://pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.tar.gz
tar xvzf GitPython-0.3.2.tar.gz
cd GitPython-0.3.2
sudo python setup.py install
cd
sudo rm -rf GitPython*
wget https://github.com/amahi/irc-bot/raw/master/Files/Releases/MS3/AmahiWorld_MS4.tar
tar xvf AmahiWorld_MS4.tar
rm -rf AmahiWorld_MS4.tar
cd AmahiWorld
#wget https://github.com/amahi/irc-bot/raw/master/Files/Scripts/startbot.sh
chmod 755 startbot.sh
cd
rm -rf amahiworld
