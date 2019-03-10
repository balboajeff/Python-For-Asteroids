#!/bin/bash

# This is a setup script for python for asteroids and must be run as root

apt-get update
apt-get install -y pip3

pip3 install pyserial requests

wget https://github.com/balboajeff/Python-For-Asteroids/archive/master.zip -O /tmp/master.zip

mkdir /home/pi/Desktop/Python-For-Asteroids
unzip /tmp/master.zip -d /home/pi/Desktop/Python-For-Asteroids

cp /home/pi/Desktop/Python-For-Asteroids/ipdisp.service /etc/systemd/system/
systemctl enable ipdisp.service

sed -i 's/^#framebuffer/framebuffer/g' /boot/config.txt

reboot
