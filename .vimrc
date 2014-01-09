" Turn syntax highlighting on
syntax on
filetype plugin on

" Turn line numbers on
set number

" Tabbing preferences
set softtabstop=2
set expandtab
set shiftwidth=2
set tabstop=2

" Automatic indentation
filetype indent on

" Trailing whitespace detection
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+$/
autocmd InsertEnter *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+$/
autocmd BufWinLeave *.{c,cc,cpp,h,py,js,idl} call clearmatches()

" Spell checking for LaTeX only
autocmd FileType tex setlocal spell spelllang=en_us

" Settings for vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

