#!/bin/bash

# Move to directory of script
OLDDIR=`pwd`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

# Backup old vimrc file
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi;

# Create hardlinks between local vimrc files and the actual vimrc files
ln .vimrc ~/
ln .vimrc_vundle ~/
ln .vimrc_bundles ~/

# Install Vundle (https://github.com/gmarik/vundle)
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Clean/install bundles
vim -u .vimrc_setup

# Return to original dir
cd $OLDDIR
