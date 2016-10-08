#!/bin/sh
set -e

image_viewer="mirage"
image_editor="pinta"
desktop_capture="kazam"
pdf_viewer="imagemagick"

sudo apt-get update
sudo apt-get install aptitude
sudo aptitude install git screen vim rubygems1.9.1 ruby1.9.1-dev ipython g++ ${pdf_viewer} ${image_viewer} ${image_editor} ${desktop_capture}
#./ros_setup.sh

#link dotfiles
ln -sf $PWD/dotfiles/.vimrc ~/.vimrc
ln -sf $PWD/dotfiles/.screenrc ~/.screenrc

#git setup
git config --global user.name "DaikiMaekawa"
git config --global user.email "method_aspect_card@yahoo.co.jp"

#Installing Jekyll with gem
sudo gem install rdoc
sudo gem install jekyll
sudo gem install therubyracer

#Change folder name from Japanese to English.
LANG=c xdg-user-dirs-gtk-update

bit=$(uname -m)

#Install Dropbox
wget -O - "https://www.dropbox.com/download?plat=lnx.${bit}" | tar xzf -
.dropbox-dist/dropboxd

