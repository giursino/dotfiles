" Press <leader>r to modify a single test region without modify the rest of text
" Usefull to batch modification
" Unremap default leader-nr to speedy open NERDTree
silent! nunmap <leader>nr
map <leader>r :NarrowRegion<CR>
