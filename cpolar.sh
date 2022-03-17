#!/usr/bin/env bash

wget https://www.cpolar.com/static/downloads/releases/latest/cpolar-stable-linux-amd64.zip
unzip ./cpolar-stable-linux-amd64.zip
./cpolar authtoken MzZjMmM0ODktMGY4Yi00M2YxLTg4ZmEtNGZlNzRhNDc2NTEy
./cpolar tcp 22
