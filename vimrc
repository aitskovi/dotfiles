filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
syntax enable
set encoding=utf8
set showcmd

"" Whitespace
set nowrap
set tabstop=4 shiftwidth=4
set expandtab
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Add a Latex command to create pdf files from tex
command Latex :!pdflatex %

" Space turns off highlighting
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Show line numbers
set nu

" Command-T Options
let g:CommandTMaxHeight=10

set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
    let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
    let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
    let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

colorscheme solarized
