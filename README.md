# David's Dotfiles

## Installation

### Zsh

Keep sure you are using **zsh** or switch with `chsh -s /bin/zsh`

Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) first if you want to use my prompt theme!

### Install script

Run 'source install.sh' to set up your dotfiles.
This will:
* Install Homebrew (checks/sets permissions, therefore using sudo)
* Set symlinks for the **zsh** configuration
* Set **Atom** text editor preferences
* Install **Hammerspoon** scripts
* Set git config
* Set the prompt theme

#### Homebrew

`brew bundle` causes an error at the moment when you try to install casks, unless they solve the issue you have to install casks manually!

## Attribution

Thanks to [Tom de Bruijn](https://github.com/tombruijn) for inspiration!
