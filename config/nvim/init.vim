" plugins (junegunn/vim-plug)
call plug#begin()
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
call plug#end()

set laststatus=2 " always show the status line
set showtabline=2
set timeoutlen=50
set noshowmode " hide default mode indicator
set number " enable line numbers
set cursorline " highlight current line
set ignorecase
set ruler
set mouse=a

set listchars=tab:»\ ,trail:·,extends:▸,precedes:◂
set list

set shiftround | set smartindent | set smarttab
set autoindent
set nowrap

" default to 2 length tab
set tabstop=2 | set shiftwidth=2 | set softtabstop=2 | set noexpandtab
" use spaces for tabs
autocmd FileType yaml set expandtab
" use 4 spaces for tabs
autocmd FileType python,rust,golang set tabstop=4 | set shiftwidth=4 | set softtabstop=4 | set expandtab

filetype plugin indent on
syntax on

" colors
set background=dark
set t_Co=256

let g:tmuxline_preset = {
    \'a'       : '#S',
    \'win'     : ['#I', '#W'],
    \'cwin'    : ['#I', '#W', '#F'],
    \'z'       : '#H',
    \'options' : {'status-justify' : 'left'}
    \}

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tmuxline#enabled=0
let g:airline_theme='bubblegum'
