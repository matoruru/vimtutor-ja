#!/bin/bash

WORKDIR=~/.cache/matoruru/vimtutor-ja
ORIGFILE=~/.local/share/matoruru/vimtutor-ja/vimtutor-ja-en.txt
TMPFILE=vIMtuToR---ja--TmpfIle--.txt

if [[ ! -d $WORKDIR ]]; then
   mkdir -p $WORKDIR
fi

cp $ORIGFILE $WORKDIR/$TMPFILE
chmod 766 $WORKDIR/$TMPFILE

vim $WORKDIR/$TMPFILE

rm $WORKDIR/$TMPFILE
