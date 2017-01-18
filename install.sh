#!/bin/bash
## Installation script for rpi_zram by "Don" aka "novaspirit"
## visit Don's website at www.novaspirit.com
## Install script by "Challon" aka PureGrain www.challon.com

## first let's get the file we need zram.sh and put it into it's happy little home
## location: /usr/local/bin

sudo wget -O /usr/local/bin/zram.sh https://raw.githubusercontent.com/puregrain/rpi_zram/master/zram.sh

## now let's change the permissions on the file

sudo chmod +x /usr/local/bin/zram.sh

## now let's append some information to /etc/rc.local so the script starts on boot

sudo sed -i -e '$i # added for rpi_zram by novaspirit\nsudo /usr/local/bin/zram.sh &\n' /etc/rc.local

echo "RPI_ZRAM install complete!!"
