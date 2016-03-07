" Vundle. Managment of plugins
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-markdown'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'reedes/vim-lexical'

call vundle#end()
filetype plugin indent on

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

let mapleader=","
" Color syntax highlighting option on
syntax on
syntax enable
colorscheme monokai
command -nargs=0 Py :set syntax=python

" Use a ortographic corrector (english)
runtime plugins/spellfile.vim
setlocal spell spelllang=en_us
set nospell
nnoremap /<space> :nohlsearch<CR>
command -nargs=1 Local :setlocal spell spelllang=<args>
" To do only sometimes comment the previous lines and do in vim:
" :spell
" :setlocal spell spelllang=en
" with z shows suggest words and with zg add to dic and zw remove from dic
runtime ftplugin/man.vim

" Moving between splits
nmap <C-Up> <C-W>k
nmap <C-Down> <C-W>j
nmap <C-Left> <C-W>h
nmap <C-Right> <C-W>l


set paste
set ruler
set number
set expandtab
set textwidth=0
set tabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
" But if a search phrase has uppercase, don't be case insensitive:
set smartcase
set showmatch
command -nargs=0 Nu :set invnumber
set title
set wildmenu
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" other possible values: marker, manual, expr, syntax, diff
set clipboard+=unnamed
set pastetoggle=<F2>
set autoread
set lazyredraw


set guioptions-=m " remove the menu bar
set guioptions-=T " remove the toolbar
set guioptions-=r " remove the scrollbar

" CONFIGURATION FOR THE TCOMMENT
" CONFIGURATION FOR THE FUGITIVE


" CONFIGURATION FOR THE ULTISNIPS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" CONFIGURATION OF VIM-AIRLINE PLUGIN
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''


let g:airline_theme='powerlineish'
" let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" CONFIGURATION FOR THE VIM-MARKDOWN
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter=1

" CONFIGURATION FOR THE PYTHON-MODE
let g:pymode_options_colorcolumn = 0
" not check code on every save
let g:pymode_lint_on_write = 0

" CONFIGURATION FOR NERDTREE
map <F3> :NERDTreeToggle<CR>
command -nargs=0 Tree :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

" CONFIGURATION FOR VIM-NOTES
let g:notes_directories = ['~/Documents/Reference/own']
let g:notes_suffix = '.md'

set wrap
set linebreak
set nolist
" To prevent Vim from automatically inserting line breaks:
set textwidth=0
set wrapmargin=0

if has("gui_running")
    set lines=50 columns=82
endif
