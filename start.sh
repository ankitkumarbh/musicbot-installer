#!/bin/bash

filepath="$(realpath $0)"
mypath="$(dirname "$filepath")"
cd $mypath

git clone `echo $REPO_URL | base64 -d` BOT
bash BOT/start.sh
