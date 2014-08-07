================================================================
Instalation
================================================================

================================================================
ruby 2.1.2
================================================================
* sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
* curl -L https://get.rvm.io | bash -s stable
* source ~/.rvm/scripts/rvm
* echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
* rvm install 2.1.2
* rvm use 2.1.2 --default
* ruby -v

================================================================
Install Rails
================================================================
* sudo add-apt-repository ppa:chris-lea/node.js
* sudo apt-get update
* sudo apt-get install nodejs
* gem install rails

================================================================
Install Chromedriver
================================================================
- wget -N http://chromedriver.storage.googleapis.com/2.9/chromedriver_linux64.zip -P ~/Downloads
- unzip ~/Downloads/chromedriver_linux64.zip -d ~/Downloads
- chmod +x ~/Downloads/chromedriver
- sudo mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver
- sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
- sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
