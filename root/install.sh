#!/bin/bash

##
# FileName : root/install.sh
#
# Author :  polohb@gmail.com
#
# Desc : creates symlinks from the root home directory
#        to any desired dotfiles in ~/dotfiles/root
#

# Only users with $UID 0 have root privileges.
ROOT_UID=0

function copy_files {
file=$1
  echo "-> backup ${HOME}/.$file to ${HOME}/.${file}_cpy"
  echo "   copy   ${PWD}/${file} to ${HOME}/.$file "
  echo ""
  mv ${HOME}/.${file} ${HOME}/.${file}_cpy
  cp ${PWD}/${file} ${HOME}/.$file
}


function fn_check_root {
  # Run as root, of course.
  if [ "$UID" -ne "$ROOT_UID" ]
  then
    echo "Need to be root to run this script."
    exit 1
  fi
}


fn_check_root
copy_files "bashrc"
