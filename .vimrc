set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'vim-scripts/taglist.vim'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'

silent map <F8> :SfSwitchView <CR>
silent map <F8> :SfSwitchView <CR>
nmap <silent> <c-n> :NERDTreeToggle<CR>
map  <C-k> :tabn<CR>
map  <C-h> :tabp<CRr

" Colors
syntax on
colors desert256
set background=dark
set number
filetype plugin indent on

let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized

" 256 colors
if &term == 'xterm'
  set t_Co=256
endif

" git 72 character columns
autocmd Filetype gitcommit setlocal spell textwidth=72

" Dvorak: 'hjkl' change {2
noremap d h
noremap h j
noremap t k
noremap n l
noremap j d
noremap l n
noremap L N

" for productivity
noremap D 4<left>
noremap H 4<down>
noremap T 4<up>
noremap N 4<right>

set noswapfile
set et
set autoindent
set pastetoggle=<F2>
set sw=2
set sts=2
set smarttab

" miniBuffer config
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitBelow=1
let g:miniBufExplVSplit = 30

"NerdTree config
let g:NERDTreeWinSize = 30
let NERDTreeMapOpenInTab ='\t'

" toggle window
map <F3> :MBEToggle<CR>

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
