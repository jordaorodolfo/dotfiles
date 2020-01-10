#!/bin/bash

# get the script of the dir with this nice one-liner
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"

# create the symlink for the config folder
ln -s $SCRIPT_DIR/config $HOME/.config

# create the symlink for the emacs folder
ln -s $SCRIPT_DIR/emacs $HOME/.emacs.d

# create symlinks for hidden stuff in home folder
for f in $SCRIPT_DIR/home/hidden/* ; do
  ln -s $(basename $SCRIPT_DIR/home/hidden/$f) ~/.$(basename $f)
done
