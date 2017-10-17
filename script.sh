#Remove libreoffice
sudo apt -y remove --purge libreoffice*
sudo apt -y clean
sudo apt -y autoremove

#Remove firefox
sudo apt -y purge firefox
sudo rm -d -f -r ~/.mozilla/firefox/
sudo rm -d -f -r .macromedia/
sudo rm -d -f -r .adobe
sudo rm -d -f -r /etc/firefox/
sudo rm -d -f -r /usr/lib/firefox/
sudo rm -d -f -r /usr/lib/firefox-addons/

#Prepare Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

#Prepare Atom
sudo add-apt-repository -y ppa:webupd8team/atom

sudo apt update

#Install Atom
sudo apt -y install atom

#Install Chrome
sudo apt-get install -y google-chrome-stable
