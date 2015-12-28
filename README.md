# polohb dotfiles

## Dotfiles

Dotfiles are used to customize the system. Those are mine for linux.

## Install
Run this :
```
cd ~/
git clone https://github.com/polohb/dotfiles.git
cd dotfiles/scripts/
bash install.sh
```

What the script do :

 * backup `~/.dotfiles` to `~/.dotfiles_old/`
 * symlinks files from `~/dotfiles/home/` to the home directory `~/`


## Uninstall
Run this :
```
cd ~/dotfiles/scripts/
bash uninstall.sh
```

What the script do :

 * delete current `~/.dotfiles` files
 * copy saved `~/.dotfiles_old/.dotfiles` to the home directory `~/`



## Hierarchy
<!-- generated with tree -->
```
.
├── home
│   ├── bash_alias
│   ├── bash_logout
│   ├── bash_prompt
│   ├── bashrc
│   ├── gitconfig
│   ├── profile
│   ├── screenrc
│   ├── vimrc
│   └── zshrc
├── prompt.png
├── README.md
├── root
│   ├── bashrc
│   └── install.sh
└── scripts
    ├── install.sh
    ├── uninstall.sh
    └── vars.sh
```

### What's in it :

#### bash_aliases :

* ls :
 * `ll` for ='ls -lh'
 * `la` for 'ls -A'
 * `l` for 'ls -CF'
 * `lla` for 'll -Al'

* tar :
 * `tarc` for 'tar -cvvzf'
 * `tarx` for 'tar -xvvzf'
 * `tart` for 'tar -tvvzf

* git (only if `/usr/bin/git` exist) :
 * `gco` for 'git checkout'
 * `gc`for 'git commit'
 * `g+` for 'git add'
 * `gpush` for 'git push'
 * `gpom` for 'git push origin master'
 * `gpull` for 'git pull'
 * `gs` for 'git status'
 * `gb` for 'git branch'
 * `gl` for 'git log'
 * `gdiff` for 'git diff'

* docker (only if `/usr/bin/docker` exist) :
  * `dockerkillall` to kill all running containers
  * `dockercleanc` to delete all stopped containers
  * `dockercleani` to delete all untagged images
  * `dockerclean` to delete all stopped containers and all untagged images

and others minors alias (@see ~/dotfiles/home/bash_alias)


#### bash_prompt :

 * Define some color for a more simple PS1 def.
 * Prompt will be like this :

 ![Prompt Style](./prompt.png)



#### profile :

 * Enable `~/.bashrc` if running bash.
 * If `~/bin/` exist then add it to PATH.


#### screenrc :

 * Customize screen with some general option.
 * Add some keybindings for a more simple navigation :
  * `F1` select window 0
  * `F2` select window 1
  * `F3` select window 2
  * `F4` select window 3
  * `F5` go to previous window
  * `F6` go to next window
  * `F7` change the title
  * `F8` create a new window
  * `F9` kill the current window

#### gitconfig :

  * Define some basic color.
  * Set `user.name` and `user.email`
  * Define some aliases for basic task and powerfull history commands

#### zshrc :

 * Define a zsh environment based on [oh-my-zsh](ttps://github.com/robbyrussell/oh-my-zsh)
 * Use `agnoster` theme that need [Powerline fonts](https://github.com/powerline/fonts.git)
 * Default plugins enabled : `git , docker , docker-compose`
 * Custom plugins enabled : [alias-tips](https://github.com/djui/alias-tips.git)


#### vimrc :

Todo : update vimrc description.

### Scripts

#### vars.sh
This files contains some essentials vars :
* `dotfiles_dir` : dotfiles directory that contains the dotfiles to copy
* `olddotfiles_dir` : dotfiles backup directory
* `files` : list of dotfiles we want to link to our home directory

Add or remove name in the `files` variable if you do not want the default ones.

#### install.sh
Just launch this script to  install the dotfiles.

It will :
* backup `~/.dotfiles` to `~/.dotfiles_old/`
* create symlinks files from `~/dotfiles/home/` to the home directory `~/`


#### uninstall.sh
Just launch this script to get back your dotfiles configuration.
