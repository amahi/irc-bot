#!/bin/bash
sudo apt-get update
sudo apt-get install -y python-pip git wget tar zip unzip screen curl cron
sudo pip install -r https://raw.githubusercontent.com/ProgVal/Limnoria/master/requirements.txt --upgrade
sudo pip install git+https://github.com/ProgVal/Limnoria.git@master --upgrade
wget https://pypi.python.org/packages/source/G/GitPython/GitPython-0.3.2.tar.gz
tar xvzf GitPython-0.3.2.tar.gz
cd GitPython-0.3.2
sudo python setup.py install
cd
sudo rm -rf GitPython*
MS=$(curl https://raw.githubusercontent.com/amahi/irc-bot/master/Installer/Refs/ref)
wget "https://raw.githubusercontent.com/amahi/irc-bot/master/Files/Releases/MS$MS/AmahiWorld_MS$MS.tar"
tar xvf AmahiWorld_MS$MS.tar
rm -rf AmahiWorld_MS$MS.tar
cd AmahiWorld
mv * ../
cd
rm -rf startbot.sh
wget https://github.com/amahi/irc-bot/raw/master/Files/Scripts/startbot.sh
chmod 755 startbot.sh
rm -rf AmahiWorld
mkdir .awupdater
cd .awupdater
touch current
wget https://raw.githubusercontent.com/amahi/irc-bot/master/Installer/updater
echo "$MS" >current
chmod 755 updater
./updater
cd
./startbot
crontab -l > crontmp
echo "0 1 * * * /home/amahiworld/.awupdater/updater" > crontmp
echo "@reboot /home/amahiworld/startbot.sh" >> crontmp
crontab crontmp
rm -rf crontmp
rm -rf amahiworld
