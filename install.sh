#!/bin/bash

#add permission execute to script

chmod +x AutoChangeDateLinux.sh

#copy script to directory bin 

cp AutoChangeDateLinux.sh /bin

#create crontab for execute script averry start system

crontab -l > autoChangeDate

echo '@reboot  /bin/AutoChangeDateLinux.sh' >> autoChangeDate

crontab autoChangeDate


