"-----------------------------------------------------------------------
" Colors
"-----------------------------------------------------------------------
syntax enable " enable syntax processing

"-----------------------------------------------------------------------
" Spaces and Tabs
"-----------------------------------------------------------------------
:set expandtab      " Replace Tab's with spaces
:set smarttab       " Helps align tabs
:set shiftwidth=2   " Indents only two spaces
:set tabstop=2      " Indents only two spaces
:set ai             " Auto indent
:set si             " Smart Indent

:set textwidth=72   " Fixes the width to 72 characters wide

"-----------------------------------------------------------------------
" UI Config
"-----------------------------------------------------------------------
:set number         " numbers at the left hand side
:set showcmd        " show command in bottom bar
:set wildmenu       " graphical menu 
 
"-----------------------------------------------------------------------
" Search
"-----------------------------------------------------------------------
set incsearch       " search as characters are entered
set hlsearch        " highlight matches" 

"-----------------------------------------------------------------------
" Launch Config
"-----------------------------------------------------------------------
call pathogen#incubate() " Use pathogen
call pathogen#helptags() " Use pathogen

"-----------------------------------------------------------------------
" Remapping Function Keys
"-----------------------------------------------------------------------
:map <F5> :setlocal spell! spelllang=en_us<CR>  " Toggle Spelling

:set pastetoggle=<F2>                           " Toggle Paste
:set showmode                                   " Display Paste Mode

"-----------------------------------------------------------------------
" LaTeX Suite
"-----------------------------------------------------------------------
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
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
