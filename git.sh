#!/bin/bash  

#param([string]$folder)

cd "$1"
git pull
git add .
# read -p "Commit description: " desc
git commit -m automated
git push
