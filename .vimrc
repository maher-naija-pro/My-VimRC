"install plugins
"#install this on mac 
"#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
"ferme (  
Plug 'jiangmiao/auto-pairs'
" color ()
Plug 'frazrepo/vim-rainbow'
" return last place
Plug 'farmergreg/vim-lastplace'
"ccolor ident
Plug 'nathanaelkane/vim-indent-guides'
" barre sous vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
" install plugins execute :PlugInstall



"activate rainbow
let g:rainbow_active = 1

"set params
"indent color config
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


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


