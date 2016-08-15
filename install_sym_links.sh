#!/bin/sh

## This script creates symlinks in the '~/' directory

dir=~/dotfiles
files=($dir/*)

for file in $files; do
    ln -s $dir/$file ~/.$file
    echo "$file"
done









