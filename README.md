# My dotfiles for ZSH + VIM + TMUX

This repository contains my setup to syncronize all linux shell on
different machines.


## Dependencies

* git
* zsh
* tmux
* vim
* python


## Install

```
cd ~
git clone git@github.com:giursino/dotfiles.git
cd dotfiles
./install
```

## Update

```
cd ~/dotfiles
git pull
./install
```

## Local customizations

* *~/bin*: local scripts (share machine scripts are inside `dotfiles/bin`)
* *~/.aliases.local*: local aliases
* *~/.zshrc.local*: local zsh setup
* *~/.gitconfig.local*: local gitconfig. Please add the local username
  and mail.
  Minimal setup:
  ```
  [user]
          email = mail@domain.com
          name = Name Surname
  ```
* *~/.vimrc.before*: vimrc local setup loaded before shared vimrc script
* *~/.vimrc.after*: vimrc local setup loaded after shared vimrc script
* *~/.vimrc.local*: local vimrc
* *~/.tmux.local.conf*: local tmux setup

## Thanks

* [github dotfiles](https://dotfiles.github.io)
* [sheerun vim tips](https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/)
* [alepez dotfiles](https://github.com/alepez/dotfiles)
* [Dotbot](https://github.com/anishathalye/dotbot)
