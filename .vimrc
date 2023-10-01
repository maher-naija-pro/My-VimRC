""install plugins
""install this on mac 
""curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
""auto pair"
Plug 'jiangmiao/auto-pairs'
""parentaise color degradee"
Plug 'frazrepo/vim-rainbow'
"" return last place
Plug 'farmergreg/vim-lastplace'
"" barre sous vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""terrafrom plugin
Plug 'hashivim/vim-terraform' 
let g:terraform_fmt_on_save=1
"#############################
""ident plugin
Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 120
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_char_list = ['┆']
"##################################
Plug 'keelii/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsAddFiletypes="tf.snippets"
"##################################
Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_ctermcolor='red'
call plug#end()

""install plugins execute :PlugInstall

"" Tell vim to remember certain things when we exit
""  '10  :  marks will be remembered for up to 10 previously edited files
""  "100 :  will save up to 100 lines for each register
""  :20  :  up to 20 lines of command-line history will be remembered
""  %    :  saves and restores the buffer list
""  n... :  where to save the viminfo files

set viminfo='1,\"1000,:100,%,n~/.viminfo

""activate rainbow
let g:rainbow_active = 1

""set params

set backspace=indent,eol,start
set expandtab
set tabstop=4


""Set partial search and result highlighting
set hlsearch
set incsearch
""Ignore case when searching
set ignorecase
set smartcase
""Show matching bracets
set showmatch

set history=10000
set undolevels=10000
syntax on

""Disable bells
set noerrorbells
set title
set noswapfile
set backupdir=~/.cache/vim
"############################################""
"how to remap keys
"{cmd} {attr} {lhs} {rhs}
"where
"{cmd}  is one of ':map', ':map!', ':nmap', ':vmap', ':imap',
"       ':cmap', ':smap', ':xmap', ':omap', ':lmap', etc.
"{attr} is optional and one or more of the following: <buffer>, <silent>,
"       <expr> <script>, <unique> and <special>.
"       More than one attribute can be specified to a map.
"{lhs}  left hand side, is a sequence of one or more keys that you will use
"       in your new shortcut.
"{rhs}  right hand side, is the sequence of keys that the {lhs} shortcut keys
"       will execute when entered.

"###########################################################################"

":nmap Display normal mode maps
":imap Display insert mode maps
":vmap Display visual and select mode maps
":smap Display select mode maps
":xmap Display visual mode maps
":cmap Display command mode maps
":omap Display operator pending mode maps


""
"" key mapping
""How to: 1/ b to inter block mode 
""        2/ sellect your bloc with arrows
""        3 / inter your comment caracter
"" map control v to b to inter visual block mode
nmap b  <C-v>
"go endfile on noraml mode
nmap e  <S-g>

"" map comment caracter  to  accelerate commenting
vmap #  <S-i>#<Esc><Esc>
vmap //  <S-i>//<Esc><Esc>
vmap "  <S-i>"<Esc><Esc>

""cmd""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command NU execute 'set nu'
"" ducplicate ligne
command D execute 't.'
"" quit and save+
command W execute 'wq!'
"" quit
command Q execute 'q!'
"" instal plugin"
command P execute 'PlugInstall'



"autocmd""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""autocmd BufWritePre *.tf  :%! echo hello
" skeletons
autocmd BufNewFile *.sh,*.bash  :%! echo '\#\!/usr/bin/bash'
autocmd BufNewFile *.py  :%! echo '\#\!/usr/bin/python'
