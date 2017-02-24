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
set textwidth=120
set wrap

" Enable Plugin loader
call plug#begin('~/.vim/plugged')

" File Searching
 Plug 'wincent/command-t', {
     \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
     \ }

" Git Diff Gutter
Plug 'airblade/vim-gitgutter'

" Auto Close
Plug 'tpope/vim-surround'

" White space tool
Plug 'ntpeters/vim-better-whitespace'
autocmd BufEnter * EnableStripWhitespaceOnSave

" Coffee-Script Support
Plug 'kchmck/vim-coffee-script'
filetype plugin indent on

" Go Support
Plug 'fatih/vim-go'

" Load Plugins
call plug#end()

" NOTE: Call `:PlugInstall` to install plugins...

