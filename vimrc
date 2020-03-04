" Set leader
let mapleader = "\<Space>"
let maplocalleader = ","

" Load settings
source ~/.vim/filetypes.vim
source ~/.vim/settings.vim
source ~/.vim/mappings.vim


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


" Press <C-UP> <C-DW> to move line
Plug 'tpope/vim-unimpaired'
nmap <C-Up> '[e'
nmap <C-Down> ']e'
vmap <C-Up> '[egv'
vmap <C-Down> ']egv'


" Press <leader>n to File browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>


" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1


" Syntax external checker (es: clang, shell, ...)
Plug 'scrooloose/syntastic'


" Press <C-P> to do a fuzzy search
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|bower_components|node_modules',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }


" Press <leader>b to open buffer window
Plug 'jeetsukumaran/vim-buffergator'


" Press <leader>c<space> to toggle comment
Plug 'preservim/nerdcommenter'


" Press F6 to open UNDO panel
Plug 'sjl/gundo.vim'
nnoremap <F6> :GundoToggle<CR>
imap <F6> <ESC>:GundoToggle<CR>


" Press <F8> to show TAG
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>


" Press v over and over again to expand selection
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" Press <C-W>! to close all open buffers without closing windows
Plug 'rgarver/Kwbd.vim'
nmap <C-W>! <Plug>Kwbd


" Git on vim
Plug 'tpope/vim-fugitive'
nmap <leader>gbl  :Gblame<CR>
nmap <leader>gst  :Gstatus<CR>
nmap <leader>gd   :Gdiff<CR>
nmap <leader>glog :Glog<CR>
nmap <leader>gc   :Gcommit<CR>
nmap <leader>gp   :Git push<CR>


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
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Press '*' to highlight and search the word under cursor on file
Plug 'vim-scripts/visualstar.vim'


" Press <TAB> to autocomplete
Plug 'ervandew/supertab'


" Show in red trailing spaces
" Clean it using :FixWhiteSpaces
Plug 'bronson/vim-trailing-whitespace'


" Press <TAB> to autocomplete the code
"Plug 'Valloric/YouCompleteMe', { 'do':'./install.sh' }


call plug#end()


" Set color
set background=dark
colorscheme luna-term
"colorscheme gruvbox
let g:airline_theme='base16_grayscale'




""""""""""""""""""" SHEERUN"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" leader shortcut
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>y :!annotate expand('%:p') " what?

" copy/paste
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" TODO: usare e spiegare (TAB in presenza di spazi e prima colonna)
if 0
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

  " inoremap <silent><expr> <CR>
  "   \ pumvisible() ? coc#_select_confirm() :
  "   \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  "   \ <SID>check_back_space() ? "\<TAB>" :
  "   \ coc#refresh()

  " inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Include local vimrc if file exists
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
