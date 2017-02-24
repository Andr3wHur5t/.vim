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

" Wrapping Configuration
set tw=120 "max chars
set wrap

" Enable Plugin loader
call plug#begin('~/.vim/plugged')

" File Searching
 Plug 'wincent/command-t', {
     \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
     \ }

" Git Diff Gutter
Plug 'airblade/vim-gitgutter'

" Load Plugins
call plug#end()

" NOTE: Call `:PlugInstall` to install plugins...

