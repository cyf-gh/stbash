#!/bin/bash
read -p "Do you want to backup old bash profiles (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        sh ./backup.sh
    ;;
    * )
        echo -e "INFO\tBackup skipped."
    ;;
esac

# install
cp ./src/.bash_profile ~
cp ./src/.bash_aliases ~
cp -r ./src/.stbash ~

# create deleted file
mkdir ~/.deleted/ 2> /dev/null
echo -e "INFO\tFolder ~/.deleted created."

source ~/.bash_profile > /dev/null

echo "Enter your name:"
read your_name
smn $your_name

clear

echo -e "INFO\tInstallation finished."

source ~/.bash_profile
