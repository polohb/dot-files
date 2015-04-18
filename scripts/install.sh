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
    echo "Creating backup dir : ${olddotfiles_dir}"
    echo ""
	if [ -e ${olddotfiles_dir} -a ! -d ${olddotfiles_dir} ]; then
		echo "${olddotfiles_dir} exist and is not a folder"
        echo "exit ..."
        exit -1
	fi
    mkdir -p ${olddotfiles_dir}

    # change to the dotfiles directory
    cd ${dotfiles_dir}

    # move any existing dotfiles in homedir to ~/dotfiles_old
    # then create symlinks from the homedir to any files in the 
    # ~/dotfiles directory specified in $files
    echo "Moving ~/.dotfiles to ${olddotfiles_dir} and create symlink to $dotfiles_dir"
    echo " "
    for file in $files; do
        echo "-> copy ${HOME}/.$file to $olddotfiles_dir/.$file"
        echo "   link ${HOME}/.$file -> ${dotfiles_dir}/${file}"
        echo ""
        mv ${HOME}/.${file} ${olddotfiles_dir}/
        ln -s ${dotfiles_dir}/${file} ${HOME}/.$file
    done
}



#-----------------------
# launch script
#-----------------------
create_symlinks


