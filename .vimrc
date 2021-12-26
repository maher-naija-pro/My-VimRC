"install plugins
"#install this on mac 
"#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'farmergreg/vim-lastplace'
call plug#end()
"# install plugins execute :PlugInstall



"activate rainbow
let g:rainbow_active = 1

"set params
set backspace=indent,eol,start
set expandtab
set tabstop=4
set hlsearch
set incsearch
set history=1000
set undolevels=1000
"filetype plugin indent on
syntax on
set ignorecase
set noerrorbells
set title
set noswapfile
set backupdir=~/.cache/vimset incsearch


