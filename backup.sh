#!/bin/sh
echo -e "INFO\tBackup old profile."
st_bak='~/.stbak'
mkdir $st_bak
mv ./.bash_profile $st_bak"/.bash_profile.bak"
