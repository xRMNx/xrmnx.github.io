#!/bin/bash  

cd "$1"
git pull
git add .
git commit -m 'automatic commit'
git push
