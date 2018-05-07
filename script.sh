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
sudo add-apt-repository -y ppa:ricotz/testing
sudo add-apt-repository -y ppa:gnome3-team/gnome3-staging
sudo add-apt-repository -y ppa:gnome3-team/gnome3

#prepare theme
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme -y
sudo add-apt-repository ppa:numix/ppa -y

sudo apt update

#Install Atom
sudo apt -y install atom

#Install Chrome
sudo apt-get install -y google-chrome-stable

#install gnome tweak tool
sudo apt-get install gnome-tweak-tool -y

#install theme
sudo apt install autoconf autogen -y
sudo apt install dh-autoreconf -y
sudo apt install pkg-config -y
sudo apt install libgtk-3-dev -y
sudo apt install gnome-themes-standard -y
./autogen.sh --prefix=/usr
sudo make install
sudo apt install numix-gtk-theme numix-icon-theme-circle -y
sudo apt install numix-wallpaper-* -y
sudo apt install gnome-shell-extensions -y

#upgrade system
sudo apt upgrade -y

rm -d -f -r arc-theme/

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Dark"
gsettings set org.gnome.desktop.interface cursor-theme "DMZ-Black"
gsettings set org.gnome.shell.extensions.user-theme name "Arc-Dark"

cp ubuntu-material-wallpaper.jpg /home/$USER/Pictures/ubuntu-material-wallpaper.jpg
gsettings set org.gnome.desktop.background picture-uri file:///home/$USER/Pictures/ubuntu-material-wallpaper.jpg

sudo reboot
