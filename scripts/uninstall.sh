#!/bin/bash

##
# FileName : makesymlinks.sh
#
# Author :  polohb@gmail.com
#
# Desc : restore saved original dotfiles
#		 from the backup dir to home
#
#

#-----------------------
# Variables
#-----------------------

source ./vars.sh


#-----------------------
# functions
#-----------------------
get_oldconfig_back () {

    echo "Moving back ${OLDDOTFILES_DIR}/.dotfiles to ${HOME}"
    echo ""
    for file in ${FILES}; do
        echo "-> copy ${OLDDOTFILES_DIR}/.${file} to ${HOME}/.${file}"
        echo ""
        # Use rm + cp
        rm ${HOME}/.$file
        cp ${OLDDOTFILES_DIR}/.${file} to ${HOME}/.${file}
    done

}


#-----------------------
# launch script
#-----------------------
get_oldconfig_back
