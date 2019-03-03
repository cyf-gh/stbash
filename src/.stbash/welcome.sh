#!/bin/bash

# Welcome Message
echo -e '\033[40;37m'

fortune | cowsay -f tux

echo '----------------------------------------'
time=`date +今は%H時%M分%S秒でございます`
ttime=`date +%H:%M:%S`
echo -e '\033[40;37m'$time

if [[ "$ttime" > "05:00:01" ]] && [[ "$ttime" < "11:30:00" ]];then
    JP_WELCOME="ご機嫌よう、"
elif [[ "$ttime" > "17:30:01" ]] || [[ "$ttime" < "05:00:00" ]];then
    JP_WELCOME="こんばんは、"
else 
    JP_WELCOME="こんにちは、"
fi

JP_WELCOME="\033[40;37m$JP_WELCOME$ST_YOURNAME 様。"
echo -e $JP_WELCOME
echo '----------------------------------------'
echo -e '\033[0m'
