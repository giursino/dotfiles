# Giuseppe Ursino dotfiles

This repository contains my setup to syncronize all linux shell on
different machines.

This is my setup using the power of: ZSH + VIM + TMUX!


## Dependencies

* git
* zsh
* tmux
* vim
* python
* silversearcher-ag
* exuberant-ctags
* fonts-powerline

## Install

```
cd ~

# using Git over HTTP (public available)
git clone https://github.com/giursino/dotfiles.git
# or using Git over SSH (need SSH keys)
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

* **`~/bin`**: local scripts (share machine scripts are inside `dotfiles/bin`)
* **`~/.aliases.local`**: local aliases
* **`~/.zshrc.local`**: local zsh setup
* **`~/.gitconfig.local`**: local gitconfig. Please add the local username
  and mail.
  Minimal setup:
  ```
  [user]
          email = mail@domain.com
          name = Name Surname
  ```
* **`~/.vimrc.before`**: vimrc local setup loaded before shared vimrc script
* **`~/.vimrc.after`**: vimrc local setup loaded after shared vimrc script
* **`~/.vimrc.local`**: local vimrc
* **`~/.tmux.local.conf`**: local tmux setup

## Thanks

* [github dotfiles](https://dotfiles.github.io)
* [mflowers dotfiles](https://github.com/marcoflowers/dotfiles)
* [sheerun vim tips](https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/)
* [alepez dotfiles](https://github.com/alepez/dotfiles)
* [Dotbot](https://github.com/anishathalye/dotbot)
* [janus vim distro](https://github.com/carlhuda/janus)
