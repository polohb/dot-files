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

    echo "Moving back ${olddotfiles_dir}/.dotfiles to ${HOME}"
    echo ""
    for file in $files; do
        echo "-> copy $olddotfiles_dir/.$file to ${HOME}/.$file"
        echo ""
        # Use rm + cp
        rm ${HOME}/.$file
        cp $olddotfiles_dir/.$file to ${HOME}/.$file
    done

}


#-----------------------
# launch script
#-----------------------
get_oldconfig_back




