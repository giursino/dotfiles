""
"" Basic Setup
""

set number            " Show line numbers
set ruler             " Show line and column number
set cursorline        " Highlight current line
set showcmd           " Show command line
set showmatch         " highlight matching [{()}]
set showmode          " Show mode
"set hidden            " Set hidden to allow buffers to be browsed
"set nostartofline     " Don’t reset cursor to start of line when moving around.
syntax enable         " Turn on syntax highlighting allowing local overrides
" Neovim disallow changing 'enconding' option after initialization
" see https://github.com/neovim/neovim/pull/2929 for more details
if !has('nvim')
  set encoding=utf-8  " Set default encoding to UTF-8
endif
set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

set noerrorbells      " Disable error bells
set visualbell t_vb=  " Disable bell


""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
"set autoindent                   " TODO capire se abilitare

if exists("g:enable_mvim_shift_arrow")
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
endif

" List chars (how to show then non printable chars)
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen
"set listchars+=eol:¬              " Show end of line
set listchars+=nbsp:⎵             " Show non breaking space

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""
" Show a list of completions
" First TAB complete till longest common string and show list of matches
" Second TAB complete with first match
set wildmode=list:longest,full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


"""
""" Saving
"""

set autoread                " Set to autoread when a file is changed from the outside
au CursorHold * checktime   " Check for file changes, so autoread works as expected


"""
""" Display
"""
set background=dark
colorscheme luna-term
let g:airline_theme='base16_grayscale'


"""
""" Plugins customization
"""

let g:airline_powerline_fonts=1



" Fuzzy search
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|bower_components|node_modules',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }
"do not change CtrlP to current file
let g:ctrlp_working_path_mode = 0


" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

if has('python3')
  let g:gundo_prefer_python3 = 1
endif
