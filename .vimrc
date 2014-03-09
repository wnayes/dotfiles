" vi compatibility. Must be first to side effect other commands
set nocompatible

" Turn syntax highlighting on
syntax on
filetype plugin on

" Dark background
set background=dark

" Turn line numbers on
set number

" Tabbing preferences
set softtabstop=2
set expandtab
set shiftwidth=2
set tabstop=2

" Automatic indentation
filetype indent on

" Change the terminal's title
set title

" Enable mouse
set mouse=a

" Use ; instead of : in commands
nnoremap ; :

" Make up and down move by editor rows, not line rows.
nnoremap j gj
nnoremap k gk

" Forgot sudo?
cmap w!! w !sudo tee % >/dev/null

" Do not beep
set visualbell
set noerrorbells

" No backup or swap files
set nobackup
set noswapfile

" Trailing whitespace detection
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
"autocmd BufWinEnter *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+$/
"autocmd InsertEnter *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave *.{c,cc,cpp,h,py,js,idl} match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave *.{c,cc,cpp,h,py,js,idl} call clearmatches()

" Spell checking for LaTeX only
autocmd FileType tex setlocal spell spelllang=en_us

" Settings for vim-latexsuite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

