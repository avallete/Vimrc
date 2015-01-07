set number
colorscheme koehler
filetype plugin indent on
syntax on
set mouse=a
set showcmd
set nocompatible
set history=100
set showmatch
set hlsearch
set incsearch
if has("autocmd")
	filetype plugin indent on
    		autocmd FileType text setlocal textwidth=78
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
	\ endif
 endif
set cursorline
hi Cursorline ctermbg=darkgrey guibg=#771c1c cterm=none
set shiftround
set ignorecase
filetype on
set cc=80
inoremap ( ()<left>
inoremap { {}<left>
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
