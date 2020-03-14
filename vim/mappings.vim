""
"" General Mappings (Normal, Visual, Operator-pending)
""

" Press double leader to enter to VISUAL mode
nmap <Leader><Leader> V

" Press leader-b to build
"nmap <Leader>b :make<CR>

" alternate file
nnoremap <Leader><Tab> <C-^>

" Fast quitting
nmap <leader>q :q!<cr>

" Fast saving
nmap <leader>s :w!<cr>

" Fast go to file under the cursor
nnoremap <Leader>g gf

" :W sudo saves the file
command! W w !sudo tee % > /dev/null

" <C-d> delete current row
nmap <C-d> dd

" Alt-j/k inserts blank line (TODO: not works)
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" 'gc'  switch two character
:nnoremap <silent> gc xph

" Reload vimrc configuration
nmap <silent> <F5> :source $MYVIMRC<CR>

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" Create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Some helpers to edit mode
" http://vimcasts.org/e/14
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

" Duplicate line
nmap <C-A-Down> yyp
nmap <C-M-Up> yyP

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Map command-[ and command-] to indenting or outdenting
" while keeping the original selection in visual mode
vmap <A-]> >gv
vmap <A-[> <gv

nmap <A-]> >>
nmap <A-[> <<

omap <A-]> >>
omap <A-[> <<

imap <A-]> <Esc>>>i
imap <A-[> <Esc><<i

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Map Control-# to switch tabs
map  <C-0> 0gt
imap <C-0> <Esc>0gt
map  <C-1> 1gt
imap <C-1> <Esc>1gt
map  <C-2> 2gt
imap <C-2> <Esc>2gt
map  <C-3> 3gt
imap <C-3> <Esc>3gt
map  <C-4> 4gt
imap <C-4> <Esc>4gt
map  <C-5> 5gt
imap <C-5> <Esc>5gt
map  <C-6> 6gt
imap <C-6> <Esc>6gt
map  <C-7> 7gt
imap <C-7> <Esc>7gt
map  <C-8> 8gt
imap <C-8> <Esc>8gt
map  <C-9> 9gt
imap <C-9> <Esc>9gt


" copy/paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>y :!annotate expand('%:p') " what?

" copy/paste: jump to the end of the text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" fast select last pasted text
noremap gV `[v`]


" Press <C-UP> <C-DW> to move line (TODO: not works)
nmap <C-Up> '[e'
nmap <C-Down> ']e'
vmap <C-Up> '[egv'
vmap <C-Down> ']egv'


" Stop that stupid window (command window, :help q:) from popping up
map q: :q


" Press <leader>n to File browser
map <leader>n :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" Press F6 to open UNDO panel
nnoremap <F6> :GundoToggle<CR>
imap <F6> <ESC>:GundoToggle<CR>

" Press <F8> to show TAG
nmap <F8> :TagbarToggle<CR>

" Press v over and over again to expand selection
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Press <C-W>! to close all open buffers without closing windows
nmap <C-W>! <Plug>Kwbd

" Git on vim
nmap <leader>gbl  :Gblame<CR>
nmap <leader>gst  :Gstatus<CR>
nmap <leader>gd   :Gdiff<CR>
nmap <leader>glog :Glog<CR>
nmap <leader>gc   :Gcommit<CR>
nmap <leader>gp   :Git push<CR>

" Press <leader>f to silver search (ACK clone)
map <leader>f :Ag<space>


""
"" Command-Line Mappings
""

" Press <C-P> to insert the current directory into a command-line path after whitespace
cnoremap <expr> <C-P> getcmdline()[getcmdpos()-2] ==# ' ' ? expand('%:p:h') : "\<C-P>"

" %% to get current file path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

