silent map <F8> :SfSwitchView <CR>
nmap <silent> <c-n> :NERDTreeToggle<CR>
map  <C-k> :tabn<CR>
map  <C-h> :tabp<CR>
filetype on
filetype plugin on
colors desert

set noswapfile
set et
set autoindent
set pastetoggle=<F2>
set sw=2
set sts=2
set smarttab
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplSplitBelow=1
let g:miniBufExplVSplit = 30

let g:NERDTreeWinSize = 30

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


" Django Snipmate
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html "For SnipMate

" Symfony2 twig snipmate
autocmd FileType twig set ft=twig.twig "For SnipMate
