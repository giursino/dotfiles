" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
if has('vim_starting') && !has('nvim') && &compatible
  set nocompatible
endif

" Set leader
let mapleader = "\<Space>"
let maplocalleader = ","

" Load local vimrc settings
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" Load settings
source ~/.vim/filetypes.vim
source ~/.vim/settings.vim
source ~/.vim/plugins.vim
source ~/.vim/mappings.vim

" Include local vimrc if file exists
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
