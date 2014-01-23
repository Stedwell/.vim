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
" Center Vim
"-----------------------------------------------------------------------
let g:centerinscreen_active = 0
 
function! ToggleCenterInScreen(desired_width)
if g:centerinscreen_active == 0
let l:window_width = winwidth(winnr())
let l:sidepanel_width = (l:window_width - a:desired_width) / 2
 
exec("silent leftabove " . l:sidepanel_width . "vsplit new")
wincmd l
exec("silent rightbelow " . l:sidepanel_width . "vsplit new")
wincmd h
let g:centerinscreen_active = 1
else
wincmd h
close
wincmd l
close
let g:centerinscreen_active = 0
endif
endfunction
 
remap <Leader>r :exec ToggleCenterInScreen(100)<CR>
