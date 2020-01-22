#!/bin/bash
sudo apt install -y pulseaudio
sudo apt install -y mpd
sudo apt install -y vlc
sudo apt install -y mopidy
sudo apt install -y mopidy-spotify
sudo apt install -y mopidy-spotify-tunigo
sudo apt install -y mopidy-alsamixer

sudo apt install -y python-pip

sudo python -m pip install Mopidy-Iris
if ! sudo grep mopidy /etc/sudoers ; then
  sudo echo "mopidy ALL=NOPASSWD: /usr/local/lib/python2.7/dist-packages/mopidy_iris/system.sh" >> /etc/sudoers
fi;
