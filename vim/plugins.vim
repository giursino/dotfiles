" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Load plugin
call plug#begin('~/.vim/plugged')


" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'notpratheek/vim-luna'

" Bubble line
Plug 'tpope/vim-unimpaired'

" Surrounding prarentheses, brackets, quotes, XML tags and more.
" Es: use cs' to change the ' surround
Plug 'tpope/vim-surround'

" SudoWrite
Plug 'tpope/vim-eunuch'


" File browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'


" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Syntax external checker (es: clang, shell, ...)
Plug 'scrooloose/syntastic'


" Fuzzy search
Plug 'kien/ctrlp.vim'


" Press <leader>b to open buffer window
Plug 'jeetsukumaran/vim-buffergator'


" Press <leader>c<space> to toggle comment
Plug 'preservim/nerdcommenter'


" undo graph window
Plug 'sjl/gundo.vim'


" show tags on windows
Plug 'majutsushi/tagbar'


" press v to select a region
Plug 'terryma/vim-expand-region'


" c-W! to close all buffers
Plug 'rgarver/Kwbd.vim'


" git on vim
Plug 'tpope/vim-fugitive'


" Show on first column the git status
Plug 'airblade/vim-gitgutter'


" Press <leader>r to modify a single test region without modify the rest of text
" Usefull to batch modification
" Unremap default leader-nr to speedy open NERDTree
Plug 'chrisbra/NrrwRgn'


" Press <C-W>o to toggle the zoom of the active window
Plug 'vim-scripts/ZoomWin'


" Press <leader>ww to show personal wiki
Plug 'vimwiki/vimwiki'


" Press '*' to highlight and search the word under cursor on file
Plug 'vim-scripts/visualstar.vim'


" Press <TAB> to autocomplete
Plug 'ervandew/supertab'


" Show in red trailing spaces
" Clean it using :FixWhiteSpaces
Plug 'bronson/vim-trailing-whitespace'


" Bitbake syntax highlight
Plug 'kergoth/vim-bitbake'


" Directory diff
Plug 'will133/vim-dirdiff'


" Silver search
Plug 'rking/ag.vim'


" <C-h/j/k/l> to move in Tmux without tmux prefix
Plug 'christoomey/vim-tmux-navigator'


" Press <TAB> to autocomplete the code
"Plug 'Valloric/YouCompleteMe', { 'do':'./install.sh' }


" Enable transparent pasting into vim (i.e. no more `:set paste!`)
Plug 'ConradIrwin/vim-bracketed-paste'


call plug#end()
