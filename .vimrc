
""install plugins
""install this on mac 
""curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
""vim go"
Plug 'fatih/vim-go'
""" execute this fori install :GoUpdateBinaries
""multi cursor"
Plug 'mg979/vim-visual-multi', {'branch': 'master'} 
""auto pair"
Plug 'jiangmiao/auto-pairs'
""parentaise color degradee"
Plug 'frazrepo/vim-rainbow'
"" return last place
Plug 'farmergreg/vim-lastplace'
"" barre sous vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""#############################
""ident plugin
Plug 'Yggdroot/indentLine'
let g:indentLine_color_term = 120
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 0
let g:indentLine_char_list = ['']
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
set shiftwidth=4

"hange cursor shape in insert mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline


" Customize cursorline highlighting
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=Red


" Enable file type detection and plugins
filetype plugin on

" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=vi 
"Setble line and column number display in the status line
set ruler

"partial search and result highlighting
set hlsearch
set incsearch
""Ignore case when searching
set ignorecase
set smartcase
""Show matching bracets
set showmatch
" Auto-indent when starting a new line
set autoindent
"history
set history=10000
set undolevels=10000

"syntax
syntax on

" Define marker symbols for folding
set foldmarker={,}

" Enable line wrapping
set wrap
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
"duplicate curent lign
nmap c :execute  't.'<CR>
"" map comment caracter  to  accelerate commenting
vmap #  <S-i>#<Esc><Esc>
vmap //  <S-i>//<Esc><Esc>
vmap "  <S-i>"<Esc><Esc>

"set nu
nmap N :execute  'set nu'<CR>
"" quit and save
nmap w :execute  'wq!'<CR>
"quitwithout save
nmap q :execute  'q!'<CR>
"" install plugin
nmap P :execute  'PlugInstall'<CR>
" r to cancel undo
nmap r <C-R>
"clean all spaces and l empty ligne
nmap s  :execute '%s/^\n\\|^\s\+\n\\|\s\+$//g'<CR>

nmap e  :execute  'GoRun'<CR>  

"cmd""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" instal plugin"
"cmd to delete all spaces and /n
command RMALLSPACES execute '%s/^\n\|^\s\+\n\|\s\+$//g'
"cmd to replace string 
command! -nargs=+ REPLACE call Sub(<f-args>)
function! Sub( ...  )
        execute printf('%%substitute/%s/%s/g', a:1, a:2)
endfunction
"autocmd""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" skeletons
autocmd BufNewFile *.sh,*.bash  :%! echo '\#\!/usr/bin/bash'
autocmd BufNewFile *.py  :%! echo '\#\!/usr/bin/python'
