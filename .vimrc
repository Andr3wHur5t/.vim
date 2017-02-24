" Enable Syntax Hilighting And Color Scheme
syntax enable
let g:rehash256 = 1
colorscheme molokai

" CMD Auto Completion
set noic

" Line Numbers
set number

" Wrapping Configutation
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

" Call `:PlugInstall` to install plugins...
