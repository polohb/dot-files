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

# dotfiles directory
dotfiles_dir=${HOME}/dotfiles/home 

# old dotfiles backup directory
olddotfiles_dir=${HOME}/dotfiles_old 

# list of files/folders to symlink in homedir
files="bashrc bash_alias bash_prompt bash_logout
       vimrc screenrc profile"   



#-----------------------
# functions 
#-----------------------
create_symlinks () {

    # create dotfiles_old in homedir
    echo "Creating backup dir : ${olddotfiles_dir}"
    echo ""
    #mkdir -p ${olddotfiles_dir}

    # change to the dotfiles directory
    #cd ${dotfiles_dir}

    # move any existing dotfiles in homedir to ~/dotfiles_old
    # then create symlinks from the homedir to any files in the 
    # ~/dotfiles directory specified in $files
    echo "Moving ~/.dotfiles to ${olddotfiles_dir} and create symlink to $dotfiles_dir"
    echo " "
    for file in $files; do
        echo "-> copy ${HOME}/.$file to $olddotfiles_dir/.$file"
        echo "   link ${HOME}/.$file -> ${dotfiles_dir}/${file}"
        echo ""
        #mv ${HOME}/.${file} ${olddotfiles_dir}
        #ln -s ${dotfiles_dir}/${file} ${HOME}/.$file
    done
}


get_oldconfig_back () {

    echo "Moving back ${olddotfiles_dir}/.dotfiles to ${HOME}"
    echo ""
    for file in $files; do
        echo "-> copy $olddotfiles_dir/.$file to ${HOME}/.$file"
        echo ""
        # Use rm + cp
        #rm ${HOME}/.$file
        #cp $olddotfiles_dir/.$file to ${HOME}/.$file
    done

}


#-----------------------
# launch script
#-----------------------
create_symlinks

# get_oldconfig_back



