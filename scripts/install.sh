#!/bin/bash -e

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
	if [[ -e ${OLDDOTFILES_DIR} ]] && [[ ! -d ${OLDDOTFILES_DIR} ]]; then
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
        if [ -f ${HOME}/.${file} ]; then
		echo "-> copy ${HOME}/.${file} to ${OLDDOTFILES_DIR}/.${file}"
        	mv ${HOME}/.${file} ${OLDDOTFILES_DIR}/
	fi
        echo "   link ${HOME}/.${file} -> ${DOTFILES_DIR}/${file}"
	ln -s ${DOTFILES_DIR}/${file} ${HOME}/.${file}
	echo ""
    done
}

# TODO check  curl , git, zsh  are present
#.zshrc will be changed with create_symlinks
install_zsh() {
    cd ~/

    # Install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    #git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh

    # Install alias-tips
    #cd ${ZSH_CUSTOM1:-$ZSH/custom}/plugins
    cd ~/.oh-my-zsh/custom/plugins
    git clone https://github.com/djui/alias-tips.git
    cd -

    # install powerline fonts
    #cd /tmp
    #git clone https://github.com/powerline/fonts.git
    #cd fonts
    #bash install.sh

    # enable powerline fonts in xfce4-terminal
    mkdir -p ${HOME}/.config/xfce4/terminal
    cp ${DOTFILES_DIR}/config-xfce4-terminal/terminalrc ${HOME}/.config/xfce4/terminal/terminalrc       

    echo "Don't forget to \"logout/login\" to enable zsh and powerline fonts"

}


#-----------------------
# launch script
#-----------------------

install_zsh
create_symlinks
