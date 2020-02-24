set nocompatible

" Set leader
let mapleader = "\<Space>"
let maplocalleader = ","

" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugin
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'Valloric/YouCompleteMe', { 'do':'./install.sh' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'mopp/mopkai.vim'

" " Press v over and over again to expand selection
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

call plug#end()





"""""""""
""" Colors
""""""""""
"set background=dark
colorscheme luna-term


""""""""""""""
""" Saving
""""""""""""""
" set to autoread when a file is changed from the outside
set autoread
" Fast saving
nmap <leader>w :w!<cr>
" :W sudo saves the file
command W w !sudo tee % > /dev/null


""""""""""""""
""" Backspace
"""""""""""""
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


"""""""""""""
""" Folding
""""""""""""
" set wrap
" set textwidth=80

""""""""""""
""" Search
"""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch


""""""""""""""
""" Display
"""""""""""""
set cmdheight=1
set ruler
set wildmenu
set number
set showmode
set showcmd
set hidden
" show matching brackets
set showmatch
set mat=2
set noerrorbells
" Add a bit of extra margin to the left
" set foldcolumn=1
" set nowrap
" set linebreak
" highlight current line
" set cursorline


""""""""""""
""" Swapping
""""""""""""
set nobackup
set nowb
set noswapfile


""""""""""""
""" Tabbing
"""""""""""
autocmd FileType html setlocal shiftwidth=2 tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
" autocomplete
set ai 

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
if $TERM == "xterm-256color"
    set t_Co=256
endif
