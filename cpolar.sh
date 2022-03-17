#!/bin/bash
pacakges=("wget" "unzip")
if [ "$(whoami)" = "root" ]
then
    user="sudo"
else
    user=""
fi

for pack in "${pacakges[@]}"
do
    if [ $( ${user} apt list --installed | grep "${pack}") -eq 0 ]
    then
        apt-get install "${pack}"
    fi
done

wget https://www.cpolar.com/static/downloads/releases/latest/cpolar-stable-linux-amd64.zip
unzip ./cpolar-stable-linux-amd64.zip
./cpolar authtoken MzZjMmM0ODktMGY4Yi00M2YxLTg4ZmEtNGZlNzRhNDc2NTEy
./cpolar tcp 22
