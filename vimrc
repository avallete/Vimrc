
" Active la numérotation des lignes
set number

" Coloration syntaxique
colorscheme koehler
filetype plugin indent on
syntax on

" Active la souris
set mouse=a

" Montre les commandes incomplètes
set showcmd

" Active l'autoindentation
" set autoindent

" Désactive la compatbilité avec l'ancien VI
" set nocompatible

" Défini l'historique à 100
set history=100

" Afficher les parenthèses correspondantes
set showmatch

" Active le surlignage lors des recherches
set hlsearch

" Afficher les résultats de la recherche au moment de la saisie
set incsearch

" Permet de revenir à la dernière position connue quand on réouvre le fichier
if has("autocmd")
	filetype plugin indent on
    		autocmd FileType text setlocal textwidth=78

	" always jump to last edit position when opening a file
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
	\ endif
 endif

" Permet de surligner la ligne actuelle
set cursorline
hi Cursorline ctermbg=darkgrey guibg=#771c1c cterm=none 

" Indentation à la marque de Tab la plus proche
set shiftround

" Désactive la casse lors de la recherche
set ignorecase

" Active la détection du type de fichier
filetype on

" Active max 80 caracteres pour norme
:set cc=80
" x
" Ferme automatiquement la parenthese ouverte et te place au milieu
inoremap ( ()<left>
