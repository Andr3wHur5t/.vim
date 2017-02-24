" Enable Syntax Highlight And Color Scheme
syntax enable
let g:rehash256 = 1
colorscheme molokai

" Spell Check (Thank God...)
set spell spelllang=en_us
set complete+=kspell

" CMD Auto Completion
set noic

" Line Numbers
set number

" Backspace
set backspace=indent,eol,start

" Open New Buffer
map <C-p> :enew<CR>

" Save
map <C-s> :w<CR>

" Split Configuration
set splitright

" Indentations Sane
" set tabstop=4
" set shiftwidth=4
" set softtabstop=0 noexpandtab

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Wrapping Configuration
set textwidth=120
set wrap

" Enable Plugin loader
call plug#begin('~/.vim/plugged')

" File Searching
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }
map <C-l> :CommandT<CR>

" Directory Structure
Plug 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

" > When no files specified open directory tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Git Diff Gutter
Plug 'airblade/vim-gitgutter'

" Auto Close
Plug 'tpope/vim-surround'

" White space tool
Plug 'ntpeters/vim-better-whitespace'
autocmd BufEnter * EnableStripWhitespaceOnSave

" Multi-cursor
Plug 'terryma/vim-multiple-cursors'

" Code Completion
Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }

" Coffee-Script Support
Plug 'kchmck/vim-coffee-script'
filetype plugin indent on

" Load Plugins
call plug#end()

" NOTE: Call `:PlugInstall` to install plugins...

