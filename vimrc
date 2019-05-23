syntax enable
let mapleader=","
" Color syntax highlighting option on
colorscheme badwolf
set encoding=utf-8

" In case of using monokai, keep slate for markdown:
"colorscheme monokai
"autocmd! BufEnter,BufNewFile *.md,*.markdown colo slate
"autocmd! BufLeave  *.md,*.markdown colo monokai
"command -nargs=0 Py :set syntax=python

set tabstop=4 " number of spaces to show a tab
" set softtabstop=4 " number of space to introduce for a tab
set shiftwidth=4 " Number of spaces inserted for indentation
set expandtab " convert tab into spaces
set autoindent " indent automatically next line
set noerrorbells
set backspace=2
" set visualbell

set paste " will prevent vim from re-tabbing your code
set nonumber " Do not show number line
command -nargs=0 Nu :set invnumber " show/hide number of line
set showcmd " show last command used in bottom bar
set showmode " show the current mode at the bottom of the screen
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set wildmode=longest,list " autocomplete similar to Bash one
set wildignore+=*.a,*.o
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=.DS_Store,*.swp,*~
set lazyredraw " redraw only when we need to
set showmatch " highlight matching brackets/parenthesis/...
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " when searching
" But if a search phrase has uppercase, don't be case insensitive:
set smartcase
set title " Automatically set screen title
set clipboard+=unnamed

" Customizing the wrap as I want:
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set ruler

" Use a ortographic corrector
runtime plugins/spellfile.vim
setlocal spell spelllang=en_us,es
set nospell
command -nargs=0 Spell :set spell!
" turn off search highlight
nnoremap /<space> :nohlsearch<CR>
nnoremap <leader><space> :nohlsearch<CR>

runtime ftplugin/man.vim


" Moving between splits
nmap <C-Up> <C-W>k
nmap <C-Down> <C-W>j
nmap <C-Left> <C-W>h
nmap <C-Right> <C-W>l


" FOLDING
set foldenable " enable folding
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent " old based on indent level
" other possible values: marker, manual, expr, syntax, diff
" space open/closes folds
nnoremap <space> za
" highlight last inserted text
nnoremap gV `[v`]

filetype indent on " load filetype-specific indent files

" AUTOGROUPS
augroup configgroup
    autocmd!
    autocmd FileType python setlocal number
    autocmd FileType text setlocal spell
    autocmd FileType markdown setlocal spell
    autocmd FileType markdown setlocal foldmethod=marker
augroup END


" Vundle. Managment of plugins
set nocompatible
"filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
" Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive' " Git inside Vim
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'reedes/vim-lexical'

call vundle#end()
filetype plugin indent on


" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


" CONFIGURATION FOR THE ULTISNIPS
" Install fonts-powerline from apt for the good symbols.
" let g:UltiSnipsUsePythonVersion = 3
" let g:UltiSnipsSnippetsDirectories = ["~/.vim/UltiSnips/"]
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" " If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"


" CONFIGURATION OF VIM-AIRLINE PLUGIN
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_tab_type = 0
" let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_skip_empty_sections = 1
let g:airline_highlighting_cache = 0
" let g:airline_section_a = airline#section#create([])
let g:airline_section_x = airline#section#create([])
let g:airline_section_y = airline#section#create(['tagbar', 'filetype' ])
let g:airline_section_z = airline#section#create(['%3p%%', ' - %l/%L', ' :%2v'])
" let g:airline_symbols.space = "\ua0"
" let g:airline_left_sep = '»'
" let g:airline_left_sep = "\u25b6"
" let g:airline_left_sep = "\u2771"
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = ''
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" CONFIGURATION FOR THE VIM-MARKDOWN
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1


" CONFIGURATION FOR NERDTREE
map <F3> :NERDTreeToggle<CR>
command -nargs=0 Tree :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']


" CONFIGURATION FOR VIM-NOTES
let g:notes_directories=['~/Documents/Reference/own']
let g:notes_suffix='.md'


" Options for the GUI program
set guioptions-=m " remove the menu bar
set guioptions-=T " remove the toolbar
set guioptions-=r " remove the scrollbar

if has("transparency")
    set transparency=20
endif

" For some reason I had problems loading it at the beginning.. now it is working
" colorscheme monokai
colorscheme badwolf

hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE

if has("gui_running")
    set lines=50 columns=82
    set guicursor+=n-v-c:blinkwait0
    colorscheme badwolf
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
    if has("transparency")
        set transparency=10
    endif
endif

