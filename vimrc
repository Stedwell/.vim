"-----------------------------------------------------------------------
" Syntax Highlighting
"-----------------------------------------------------------------------
syntax enable " enable syntax processing

" Markdown
au! BufNewFile,BufRead *.text  set filetype=markdown
au BufNewFile,BufRead *.text  set ai formatoptions=tcroqn2 comments=n:&gt;
au! BufNewFile,BufRead *.md  set filetype=markdown
au BufNewFile,BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;


"-----------------------------------------------------------------------
" Spaces and Tabs
"-----------------------------------------------------------------------
set expandtab      " Replace Tab's with spaces
set smarttab       " Helps align tabs
set shiftwidth=2   " Indents only two spaces
set tabstop=2      " Indents only two spaces
set ai             " Auto indent
set si             " Smart Indent

set textwidth=72   " Fixes the width to 72 characters wide

"-----------------------------------------------------------------------
" UI Config
"-----------------------------------------------------------------------
set number         " numbers at the left hand side
set showcmd        " show command in bottom bar
set wildmenu       " graphical menu 
set ruler
set title

"-----------------------------------------------------------------------
" Movement
"-----------------------------------------------------------------------
set scrolloff=3    " Keeps 3 lines from top and bottom
 
"-----------------------------------------------------------------------
" Search
"-----------------------------------------------------------------------
set incsearch       " search as characters are entered
set hlsearch        " highlight matches" 
set ignorecase      " not case sensitive
set smartcase       " not case sensitive unless capitals are used
nmap <silent> ,/ :nohlsearch<CR>

"-----------------------------------------------------------------------
" Launch Config
"-----------------------------------------------------------------------
call pathogen#incubate() " Use pathogen
call pathogen#helptags() " Use pathogen

"-----------------------------------------------------------------------
" Remapping Function Keys
"-----------------------------------------------------------------------
:map <F4> :setlocal spell! spelllang=en_us<CR>  

:set pastetoggle=<F2>                           " Toggle Paste
:set showmode                                   " Display Paste Mode

"-----------------------------------------------------------------------
" Arduino Highlighting
"-----------------------------------------------------------------------
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"-----------------------------------------------------------------------
" Key Rebinding 
"-----------------------------------------------------------------------
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>

nnoremap <F3> "=strftime("%Y-%m-%d %T")<CR>P
inoremap <F3> <C-R>=strftime("%Y-%m-%d %T")<CR>

cabbrev W w

"-----------------------------------------------------------------------
" vim-latex formatting
"-----------------------------------------------------------------------
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'


"-----------------------------------------------------------------------
" Change commonly misspelled words
"-----------------------------------------------------------------------
:abbr teh the
