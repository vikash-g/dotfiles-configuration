:syntax on
:autocmd FileType *      set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://

" Set line number and its fg/bg color
set number
hi LineNr ctermbg=Grey ctermfg=DarkBlue

" Set Cursor Line fg/bg color
set cursorline
hi CursorLineNr term=bold ctermfg=Yellow ctermbg=Black
hi CursorLine term=None ctermbg=Black

" Status line settings
"set statusline=%f
"hi StatusLine ctermbg=Yellow ctermfg=Red

" Set matching pairs
set mps+=<:>

set autoindent
set autowrite
set mouse=a
:ab #d #define
:ab #i #include
:ab #b /********************************************************
:ab #e ********************************************************/
:ab #l /*------------------------------------------------------*/
set sw=4
set tabstop=8
set notextmode
set notextauto
set hlsearch
set incsearch
set textwidth=180
set pastetoggle=<F2>
set foldmethod=indent
set foldenable
"---adds a menu, press <F4> to use it.---"
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"---End menu---"

filetype plugin on

execute pathogen#infect()

" Key mapping for pane navigation
map <C-Left> <C-W>h
map <C-Right> <C-W>l
map <C-Up> <C-W>k
map <C-Down> <C-W>j

" Key mapping for code navigation
map <S-Right> <C-]>
map <S-Left> <C-t>

nmap qq :qall<CR>

" nerdtree settings
"

" taglist settings
"

" airline settings
set laststatus=2
