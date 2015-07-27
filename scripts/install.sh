#!/bin/bash

##
# FileName : makesymlinks.sh
#
# Author :  polohb@gmail.com
#
# Desc : creates symlinks from the home directory
#        to any desired dotfiles in ~/dotfiles
#
#

#-----------------------
# Variables
#-----------------------

source ./vars.sh


#-----------------------
# functions
#-----------------------
create_symlinks () {

    # create dotfiles_old in homedir
    echo "Creating backup dir : ${OLDDOTFILES_DIR}"
    echo ""
	if [[ -e ${OLDDOTFILES_DIR} -a ! -d ${OLDDOTFILES_DIR} ]]; then
    echo "${OLDDOTFILES_DIR} exist and is not a folder"
    echo "exit ..."
    exit -1
	fi
    mkdir -p ${OLDDOTFILES_DIR}

    # change to the dotfiles directory
    cd ${DOTFILES_DIR}

    # move any existing dotfiles in homedir to ~/dotfiles_old
    # then create symlinks from the homedir to any files in the
    # ~/dotfiles directory specified in $files
    echo "Moving ~/.dotfiles to ${OLDDOTFILES_DIR} and create symlink to $DOTFILES_DIR"
    echo " "
    for file in ${FILES}; do
        echo "-> copy ${HOME}/.${file} to ${OLDDOTFILES_DIR}/.${file}"
        echo "   link ${HOME}/.${file} -> ${DOTFILES_DIR}/${file}"
        echo ""
        mv ${HOME}/.${file} ${OLDDOTFILES_DIR}/
        ln -s ${DOTFILES_DIR}/${file} ${HOME}/.${file}
    done
}



#-----------------------
# launch script
#-----------------------
create_symlinks
