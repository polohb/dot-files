#!/bin/bash

##
# FileName : vars.sh
#
# Author :  polohb@gmail.com
#
# Desc : prepares some vars for others scripts
#
##

#-----------------------
# Variables
#-----------------------

# dotfiles directory
readonly DOTFILES_DIR="${HOME}/dotfiles/home"

# old dotfiles backup directory
readonly OLDDOTFILES_DIR="${HOME}/.dotfiles_old"

# list of files/folders to symlink in homedir
readonly FILES="bashrc bash_alias bash_prompt bash_logout vimrc screenrc profile gitconfig zshrc tmux.conf"
