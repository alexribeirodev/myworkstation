#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip wine gnome-online-accounts git build-essential libssl-dev flatpak gnome-software-plugin-flatpak apt-transport-https ca-certificates curl gnupg-agent software-properties-common ubuntu-make -y &&

## Instalando o Docker

sudo apt remove docker docker-engine docker.io containerd runc -y &&

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&

sudo apt-get update &&

sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&

## Ambiente com umake

sudo umake web firefox-dev &&
sudo umake go go-lang &&

## Instalando pacotes Snap ##

sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install postman &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 
sudo snap install datagrip --classic &&
sudo snap install telegram-desktop &&
sudo snap install node --classic &&


## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub io.dbeaver.DBeaverCommunity -y &&
sudo flatpak install flathub com.meetfranz.Franz -y &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ && ## wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb &&

##Softwares alternativos Windows##

##GIMP e PhotoGIMP
flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
