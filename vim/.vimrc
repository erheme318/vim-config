set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

" Navigation
Plugin 'scrooloose/nerdtree'

" Finder
Plugin 'L9'

Plugin 'tpope/vim-fugitive'
Plugin 'spf13/vim-autoclose'
Plugin 'altercation/vim-colors-solarized'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-scripts/taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'jceb/vim-orgmode'
Plugin 'honza/vim-snippets'
Plugin 'w0ng/vim-hybrid'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-coverage'
Plugin 'google/vim-glaive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'w0rp/ale'

" Lean & lightweight status/tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color schema
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/phd'

" Tmux
Plugin 'christoomey/vim-tmux-navigator'

" Orgmode
Plugin 'tpope/vim-speeddating'

" All the plugins must be added before the this line
call vundle#end()             " required
call glaive#Install()
filetype plugin indent on     " required

" 256 colors
set t_Co=256

" Colors
syntax on                                                  
set background=dark
colorscheme jellybeans
set number
set noswapfile
set et
set autoindent
set smartindent
set shiftwidth=4
set pastetoggle=<F2>
set sw=4   "shift width
set sts=2  "soft tab stop
set smarttab
set encoding=utf-8

" Search
set incsearch
set hlsearch

" git 72 character columns
autocmd Filetype gitcommit setlocal spell textwidth=72


" General configurations

":1 Environment settings

" solarized colors
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:mapleader = ','

"NerdTree config
let g:NERDTreeMapOpenInTab = '<C-S-t>'
let g:NERDTreeMapOpenVSplit = 'a'
nmap <silent> <c-n> :NERDTreeToggle<CR>

set title titlestring=%<%f\ %([%{Tlist_Get_Tagname_By_Line()}]%)
let Tlist_Use_Horiz_Window=0
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Close_On_Select = 1
let Tlist_Process_File_Always = 1

" Auto close
let g:autoclose_vim_commentmode = 1

" 2: Mappings

" Dvorak: 'hjkl' change {2
noremap d h
noremap h j
noremap t k
noremap n l

" Additional dvorak mappings
noremap j d
noremap l n
noremap L N

" For productivity
noremap H 6<down>
noremap T 6<up>

"Window move
nmap <leader>d <C-w><LEFT>
nmap <leader>n <C-w><RIGHT>
nmap <leader>t <C-w><UP>
nmap <leader>h <C-w><DOWN>
nnoremap <silent> <F8> :TlistToggle<CR>
set pastetoggle=<F2>

"Buffer open
nmap .n :bn<CR>
nmap .h :bp<CR>

" Orgmode
let maplocalleader = 'k'

" js beautify
map <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>

" Code coverage
Glaive coverage plugin[mappings]

" Allow Airline to use poweline fonts
let g:airline_powerline_fonts = 1

" Airline appears without window split
set laststatus=2

" CtrlP configurations
" excluded directories
set wildignore+=*/.git/*,*/vendor/*,*/cache/*,*/logs/*,*/i18n/*,*/node_modules/*,*/build/*
