execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

filetype on
set number
colorscheme solarized
filetype plugin indent on
syntax on

" HTML/CSS indent
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" Autocomplete Neocomplcache
let g:neocomplcache_enable_at_startup = 0
let g:neocomplcache_enable_smart_case = 3
" Set Minimum syntax
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"Set Rainbow parenthese
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"Set Multiple Cursor
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" Default highlighting (see help :highlight and help :highlight-link)
highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

set mouse=a
set showcmd
set nocompatible
set history=200
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
set shiftround
set ignorecase

filetype on
set cc=80
inoremap ( ()<left>
inoremap { {}<left>

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :NERDTreeToggle<CR>
