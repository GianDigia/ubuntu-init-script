#Remove libreoffice
sudo apt -y remove --purge libreoffice*
sudo apt -y clean
sudo apt -y autoremove

#Prepare Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

#Prepare Atom
sudo add-apt-repository -y ppa:webupd8team/atom

#prepare gnome tweak tool
sudo add-apt-repository ppa:ricotz/testing
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo add-apt-repository ppa:gnome3-team/gnome3

sudo apt update

#Install Atom
sudo apt -y install atom

#Install Chrome
sudo apt-get install -y google-chrome-stable

#install gnome tweak tool
sudo apt-get install gnome-tweak-tool

#upgrade system
sudo apt upgrade -y
