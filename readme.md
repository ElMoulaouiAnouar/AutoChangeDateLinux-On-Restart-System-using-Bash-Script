## Automatic date change when running linux
### DESCRIPTION : 
### Problem
##### The problem of changing the time and date after restarting the computer is one of the simple problems that many users suffer from, as it appears when the device is turned on, as the user notices that the date and time has returned to an old date, which greatly affects browsing the Internet.
### Solve This Problem
##### To solve this problem I present a script that I created using shell Scripting and based on api from http://worldtimeapi.org/ which provides a simple web service that displays the current local time for a specific time zone.

### DOWNLOAD AND INSTALL SCRIPT 
#### 1º - Download script from github
```sh
git clone https://github.com/ElMoulaouiAnouar/AutoChangeDateLinux-On-Restart-System-using-Bash-Script.git
```
#### 2º - Install jq
```
apt-get install jq
```
##### jq is a Linux command line utility that is easily used to extract data from JSON documents. <br/>
#### 3º - Set execution permissions
```sh
cd AutoChangeDateLinux-On-Restart-System-using-Bash-Script
sudo chmod +x install.sh
```
#### 4º - Install
```sh
./install.sh
```
#### 5º - Run
```sh
./AutoChangeDateLinux.sh
```