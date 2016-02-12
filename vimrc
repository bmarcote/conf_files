" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent off

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Color syntax highlighting option on
syntax on
" Color syntax monokai:
syntax enable
colorscheme monokai
command Py set syntax=python

" Use a ortographic corrector (english)
runtime plugins/spellfile.vim
setlocal spell spelllang=en
set nospell
nnoremap /<space> :nohlsearch<CR>
" To do only sometimes comment the previous lines and do in vim:
" :spell
" :setlocal spell spelllang=en
" with z shows suggest words and with zg add to dic and zw remove from dic

set paste
set expandtab
set textwidth=0
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
set showmatch
set ruler
set title
set wildmenu
set foldlevel=0
set clipboard+=unnamed
"set cursorline
set wildmenu
set pastetoggle=<F2>
set autoread
" For gvim:
set guioptions-=m " remove the menu bar
set guioptions-=T " remove the toolbar
"set guioptions-=r " remove the scrollbar

" To avoid messages during saving in a remote file
let g:netrw_silent=1

