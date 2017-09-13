#!/bin/sh

for file in "$1"/*
    do
      if [ -f "$file" ];then
	FN=$(basename $file)
	pandoc "$file" -o "$2"/$FN.html && rm -rf "$file"
      fi
    done

rm -rf "$2"/.html
