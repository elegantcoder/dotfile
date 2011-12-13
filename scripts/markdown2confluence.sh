#!/bin/bash

argc=$#

if [ 0 -eq $argc ]; then
   echo "파라미터로 markdown 파일을 지정해주세요."
   echo " usage>  md2conf example.markdown"
   echo "                            "
   echo " # clipboard copy option"
   echo " ex>  md2conf example.markdown -c"
   exit
fi

python ~/.dotfiles/scripts/Markdown-Converter/markdown_converter.py $1

if [ "$2" = "-c" ]; then
   cat $1.'txt' | pbcopy
fi
