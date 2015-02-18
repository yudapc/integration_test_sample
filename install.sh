#!/bin/bash

if ! which rvm > /dev/null 2>&1; then
echo "Install rvm & ruby..."
  sudo apt-get install libmysqlclient-dev -y
  sudo apt-get install build-essential git-core -y
  sudo apt-get install curl -y
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable --ruby
  echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
  rvm install 2.2.0
  rvm use 2.2.0 --default
  echo "rvm & ruby already installed"
fi

if ! which unzip > /dev/null 2>&1; then
  sudo apt-get install unzip -y
fi

if ! which chromedriver > /dev/null 2>&1; then
  wget -N http://chromedriver.storage.googleapis.com/2.14/chromedriver_linux64.zip -P ~/Downloads
  chmod +x ~/Downloads/chromedriver
  sudo mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver
  sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
  sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
fi
