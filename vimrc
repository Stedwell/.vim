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
