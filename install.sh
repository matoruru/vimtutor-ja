#!/bin/bash

WORKDIR=~/.local/share/matoruru/vimtutor-ja

if [[ ! -f ./vimtutor-ja-en.txt ]]; then
   echo 'the text was not found.'
   echo
   echo 'you may be in wrong directory.'
   echo 'please MOVE this repositories directory.'
   exit
fi

if [[ ! -d $WORKDIR ]]; then
   mkdir -p $WORKDIR
fi

if [[ ! -d ~/.vim/matoruru/vimtutor-ja/ ]];then
   mkdir -p ~/.vim/matoruru/vimtutor-ja
   cp essential.vim ~/.vim/matoruru/vimtutor-ja/
fi

cp ./vimtutor-ja-en.txt $WORKDIR
chmod 744               $WORKDIR/vimtutor-ja-en.txt
