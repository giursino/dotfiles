" Set leader
let mapleader = "\<Space>"
let maplocalleader = ","

"set background=dark
colorscheme luna-term


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
"Plug 'Valloric/YouCompleteMe', { 'do':'./install.sh' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'

Plug 'jeetsukumaran/vim-buffergator'

" " Press v over and over again to expand selection
Plug 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

call plug#end()






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""SHEE

" leader shortcut
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
nmap <Leader>b :make<CR>
nnoremap <Leader><Tab> <C-^>
nnoremap <Leader>y :!annotate expand('%:p') " what?

nnoremap <Leader>o :FZF<CR>

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <Leader>w :w<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>v V
nnoremap <Leader>g gf


" TODO: usare e spiegare (TAB in presenza di spazi e prima colonna)
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""
""" Saving
""""""""""""""
" set to autoread when a file is changed from the outside
set autoread


" Include local vimrc if file exists
if filereadable(glob("~/.vimrc.local"))
	source ~/.vimrc.local
endif
