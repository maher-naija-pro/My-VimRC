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
"#############################
""ident plugin
"Plug 'Yggdroot/indentLine'
"let g:indentLine_color_term = 120
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_char_list = ['┆']
"##################################
Plug 'SirVer/ultisnips'
Plug 'keelii/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsAddFiletypes="tf.snippets" 
"##################################



call plug#end()
"##install plugins execute :PlugInstall

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='100,\"1000,:40,%,n/.viminfo


"activate rainbow
let g:rainbow_active = 1

"##set params

set backspace=indent,eol,start
set expandtab
set tabstop=4



" Set partial search and result highlighting
set hlsearch
set incsearch
" Ignore case when searching
set ignorecase
set smartcase
" Show matching bracets
set showmatch

set history=1000
set undolevels=1000
syntax on

" Disable bells
set noerrorbells
set title
set noswapfile
set backupdir=~/.cache/vim


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


command Cc  execute com
command Ccall  execute "%s/^\([^#].*\)/#&/"
command Cn execute 'set nu'
command Cd execute 't.'
