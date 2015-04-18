# polohb dotfiles

## Dotfiles

Dotfiles are used to customize the system. Those are mine for linux.

## Install
Run this : 
```
cd ~/
git clone https://github.com/polohb/dotfiles.git
cd dotfiles
bash makesymlinks.sh 
```

What the script do :
 
 * backup `~/.dotfiles` to `.~/dotfiles_old/` 
 * symlinks files from `~/dotfiles/home/` to the home directory `.~/`


## Hierarchy
<!-- generated with tree -->
```
├── home
│   ├── bash_alias
│   ├── bash_logout
│   ├── bash_prompt
│   ├── bashrc
│   ├── profile
│   ├── screenrc
│   └── vimrc
├── makesymlinks.sh
└── README.md
```


