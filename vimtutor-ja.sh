#!/bin/bash

WORKDIR=~/.cache/matoruru/vimtutor-ja
ORIGFILE=~/.local/share/matoruru/vimtutor-ja/vimtutor-ja-en.txt
TMPFILE=vIMtuToR---ja--TmpfIle--.txt

if [[ ! -d $WORKDIR ]]; then
   mkdir -p $WORKDIR
fi

cp $ORIGFILE $WORKDIR/$TMPFILE
chmod 766 $WORKDIR/$TMPFILE

if [[ "$1" == "usevimrc" ]]; then
   vim $WORKDIR/$TMPFILE
elif [[ "$1" == "" ]]; then
   vim -n -u ~/.vim/matoruru/vimtutor-ja/essential.vim $WORKDIR/$TMPFILE
else
   echo "that option does not exist."
   exit
fi

rm $WORKDIR/$TMPFILE
