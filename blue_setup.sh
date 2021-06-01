#!/bin/bash

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add 

sudo apt update

sudo apt install -y zlib1g-dev

sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev build-essential python-dev

cd Downloads
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -xvzf Python-3.6.8.tgz
cd Python-3.6.8/
./configure
make
make test
sudo make install
cd ..
rm -rf Python-3.6.8
rm -rf Python-3.6.8.tgz

sudo apt install tmux
sudo apt install fish
sudo apt install ruby
gem install teamocil


sudo apt install -y git
cd 
mkdir Projects
cd Projects/
git config --global user.name "Matias Schimuneck"
git config --global user.email "matias.schimuneck@blueface.com"
git config --global credential.helper cache
git clone https://schimuneck@bitbucket.org/bluefacedevs/corelibutils.git


cd
sudo pip3 install virtualenv
cd Projects/corelibutils/
mkdir env
virtualenv -p python3 env
source env/bin/activate
python setup.py install
#pip install --upgrade -r requirements.txt
#Run test
python setup.py test
python -m pytest tests/
#Run app
env FLASK_APP=wsgi.py APP_ENV=local FLASK_ENV=development flask run
deactivate

wget https://download.jetbrains.com/python/pycharm-community-2019.3.2.tar.gz
cd 
tar -xvzf Downloads/pycharm-community-2019.3.2.tar.gz
cd pycharm-community-2019.3.2/bin/
PATH=$PATH:~/pycharm-community-2019.3.2/bin/
cd 
./pycharm.sh 
# Open ~/Projects/corelibutils | File->Settings->Project->Project Interpreter | Add ~/Projects/corelibutils/env/bin/python3.6

sudo apt install postgresql-server-dev-10

sudo apt install pgadmin3

cd
cd Downloads/
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
sudo dpkg -i slack-desktop-4.2.0-amd64.deb
sudo apt-get install -f
