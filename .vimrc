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
" barre sous vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'keelii/vim-snippets'

call plug#end()
"##install plugins execute :PlugInstall



"activate rainbow
let g:rainbow_active = 1

"##set params

set backspace=indent,eol,start
set expandtab
set tabstop=4
set hlsearch
set incsearch
set history=1000
set undolevels=1000
"##filetype plugin indent on
syntax on
set ignorecase
set noerrorbells
set title
set noswapfile
set backupdir=~/.cache/vim
set incsearch


"## key mapping
"How to: 1/ b to inter block mode 
"        2/ sellect your bloc with arrows
"        3 / inter your comment caracter
"# map control v to b to inter visual block mode
nmap b  <C-v>
"# map comment caracter  to  accelerate commenting
vmap #  <S-i>#<Esc><Esc>
vmap //  <S-i>//<Esc><Esc>
vmap "  <S-i>"<Esc><Esc>

"function! s:Com(debut,fin)
"     a:debut,a:fins/^\([^#].*\)/#&/
"endfunction

command Cc  execute com
command Ccall  execute "%s/^\([^#].*\)/#&/"
command Cn execute 'set nu'
command Cd execute 't.'
