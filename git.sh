#!/bin/bash  
cd ~/xrmnx.github.io
git pull
git add .
# read -p "Commit description: " desc
git commit -m automated
git push
