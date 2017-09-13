#!/bin/sh

for file in "$1"/*
    do
      if [ -f "$file" ];then
	FN=$(basename $file)
	pandoc "$file" -o "$2"/$FN.html && rm -rf "$file"
      fi
    done



#		command = "pandoc #{inputPath}\/#{name} -o #{outputPath}\/#{base}#{extTo} && rm -rf #{inputPath}\/#{name}"
