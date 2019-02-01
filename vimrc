" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'

" Initialize plugin system
call plug#end()

set nocompatible
syntax enable
set encoding=utf8
set showcmd

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Space turns off highlighting
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Show line numbers
set nu

set ttimeoutlen=50

" Configure ack.vim to use ag
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack                                                                           
cnoreabbrev aG Ack                                                                           
cnoreabbrev Ag Ack                                                                           
cnoreabbrev AG Ack

"Use ag to speed up CTRL-P
" let g:ctrlp_use_caching = 1
" let g:ctrlp_max_files=20000
" let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
"      \ --ignore .git
"      \ --ignore .svn
"      \ --ignore .hg
"      \ --ignore .DS_Store
"      \ --ignore "**/*.pyc"
"      \ --ignore "build/autoloader/**/*"
"      \ -g ""'

" Use cpsm to make the matching better
" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

" Turn on linting only on file save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_ruby_rubocop_executable = 'scripts/bin/rubocop'
" let g:airline#extensions#ale#enabled = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign

" Improve colors
set background=dark
colorscheme solarized

set backupdir=~/.vim/.backup/

" Enable jsx highlighting everywhere
let g:jsx_ext_required = 0
cnoremap <C-a> <Home>

" Set-up FZF
" FZF (replaces Ctrl-P, FuzzyFinder and Command-T)
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
nnoremap <c-p> :FZF<cr>
nmap <Leader>p :Files<CR>
nmap <Leader>a :Rg!<CR>
nmap <Leader>c :Colors<CR>
" let $FZF_DEFAULT_COMMAND = 'ag --files --hidden --follow -g "!{.git,node_modules}/*" 2>/dev/null'
"
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

let g:pencil#map#suspend_af = 'K'   " default is no mapping
