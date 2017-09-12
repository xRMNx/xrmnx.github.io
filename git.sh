#!/bin/bash  
git pull
git add .
read -p "Commit description: " desc
git commit -m "$desc"
git push
