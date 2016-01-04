set nocompatible             " be iMproved, required
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
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
Plugin 'L9'
Plugin 'vim-scripts/FuzzyFinder'

" All the plugins must be added before the this line
call vundle#end()             " required
filetype plugin indent on     " required

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

" 256 colors
if &term == 'xterm'
  set t_Co=256
endif

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

"Fuzzy Finder
nnoremap <silent> .b :FufBuffer<CR>
nnoremap <silent> .f :FufFile<CR>
nnoremap <silent> .d :FufDir<CR>
nnoremap <silent> .t :FufTag<CR>
nnoremap <silent> .C :FufChangeList<CR>
nnoremap <silent> .l :FufLine<CR>
