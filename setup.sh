#!/bin/bash

# This is a setup script for python for asteroids and must be run as root

apt-get update
apt-get install -y python3-pip

pip3 install pyserial requests

wget https://github.com/balboajeff/Python-For-Asteroids/archive/master.zip -O /tmp/Python-For-Asteroids.zip

unzip /tmp/Python-For-Asteroids.zip -d /home/pi/Desktop/

chown -R pi:pi /home/pi/Desktop/Python-For-Asteroids-master

cp /home/pi/Desktop/Python-For-Asteroids-master/ipdisp.service /etc/systemd/system/
systemctl enable ipdisp.service

sed -i 's/^#framebuffer/framebuffer/g' /boot/config.txt

reboot
