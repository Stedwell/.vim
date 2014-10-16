"----------------------------------------------------------------------
" Tabs, Spaces, Usage, Brackets
"----------------------------------------------------------------------
set expandtab       " Replace Tab's with spaces
set smarttab        " Helps align tabs
set shiftwidth=2    " Indents only two spaces
set tabstop=2       " Indents only two spaces
set autoindent      " Auto indent
set copyindent      " Smart Indent
set textwidth=72    " Fixes the width to 72 characters wide
set colorcolumn=72  " Puts a color column at 72 characters

set incsearch       " search as characters are entered
set ignorecase      " not case sensitive
set smartcase       " capitals cause case sensitivity
nmap <silent> ,/ :nohlsearch<CR>

set backspace=indent,eol,start
set showmatch       " show matching parenthesis, move between brackets
nnoremap <tab> %
vnoremap <tab> %

"----------------------------------------------------------------------
" UI Configuration
"----------------------------------------------------------------------
syntax enable 	          " enable syntax processing
colorscheme mustang

set number                " numbers at the left hand side
set showcmd               " show command in bottom bar
set wildmenu              " graphical menu
set wildmode=list:longest " shows more for wildmenu
set ruler                 "
set title                 "
set showmode              "
set cursorline            " Places line under current line
set ttyfast               " Speeds up how fast characters are drawn

set scrolloff=3           " keeps cursor 3 lines from top or bottom
set relativenumber        " displays how far away from current line
"----------------------------------------------------------------------
" Key remapping
"----------------------------------------------------------------------
:map <F4> :setlocal spell! spelllang=en_us<CR>

:set pastetoggle=<F2>

let mapleader = "'"

inoremap jj <ESC>

nnoremap <F12> "=strftime("%Y-%m-%d %T")<CR>P
inoremap <F12> <C-R>=strftime("%Y-%m-%d %T")<CR>

nnoremap <F10> "=strftime("%Y-%m-%d")<CR>P
inoremap <F10> <C-R>=strftime("%Y-%m-%d")<CR>

nnoremap ; :

"----------------------------------------------------------------------
" Bundle Setting
"----------------------------------------------------------------------
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

"----------------------------------------------------------------------
" Miscellaneous
"----------------------------------------------------------------------
set nocompatible

call pathogen#incubate()  " use pathogen
call pathogen#helptags()  " use pathogen

:set spell

set undofile  " Creates a .un file to track changes even after closing

au FocusLost * :wa        " auto save if focus is lost

" remove trailing whitespace at end of current line
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"----------------------------------------------------------------------
" Split windows
"----------------------------------------------------------------------
nnoremap <leader>w <C-w>s<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" EoF
