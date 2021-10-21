#!/bin/bash

function AutoChangeDate(){
    #get datetime from api 

    _date_time=$(curl -s "http://worldtimeapi.org/api/timezone/Africa/Casablanca" | jq -r '.datetime')

    #substring date only from command ${variable:offset:length}

    _date=${_date_time:0:10}

    #substring time only from command ${variable:offset:length}

    _time=${_date_time:11:8}

    #replace caracter (-) to caracter vide white commande ${variable/patern/value_replace}

    _date=${_date//-/}

    #execute commande linux change datetime  => date --set="date time"

    date --set="$_date $_time"
}

#check if system connect to internet
connecter=true
while $connecter
do
    if ping -c 1 google.com > /dev/null;then
        connecter=false
        AutoChangeDate
    else
        echo 'connection faild';
    fi
done
