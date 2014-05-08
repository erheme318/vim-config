set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'spf13/vim-autoclose'
Bundle 'altercation/vim-colors-solarized'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'vim-scripts/taglist.vim'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/syntastic'

" Colors
syntax on
set background=dark
set number
set noswapfile
set et
set autoindent
set pastetoggle=<F2>
set sw=2
set sts=2
set smarttab
filetype on
colorscheme solarized

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

" miniBuffer config
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitBelow=1
let g:miniBufExplVSplit = 30

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

" for productivity
noremap H 6<down>
noremap T 6<up>

"Window move
nmap <leader>d <C-w><LEFT>
nmap <leader>n <C-w><RIGHT>
nmap <leader>t <C-w><UP>
nmap <leader>h <C-w><DOWN>

nmap <silent> <c-n> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

"Buffer open
nmap .t :bn<CR>
nmap .h :bp<CR>
