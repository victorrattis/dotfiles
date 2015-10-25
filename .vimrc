
" ******************************************************************************
" PLUGINS: VUNDLE
" ******************************************************************************
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'victorrattis/tcomment_vim'

Plugin 'rodrigoperazzo/whitespaces_vim'

Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ******************************************************************************
" MAPS
" ******************************************************************************

" Shortcuts to TComment
nnoremap <C-_> :TComment<CR>
inoremap <C-_> <ESC>:TComment<CR>ga
vnoremap <C-_> <ESC>:TComment<CR>gv

map <F9> :copen<CR>
map <F10> :cclose<CR>

map <C-a> <ESC>gg<CR>vG

" Shortcuts to save file
nnoremap <C-o> <ESC>:w<CR>
inoremap <C-o> <ESC>:w<CR>gi
vnoremap <C-Down> <ESC>:w<CR>gv

" Shortcuts to move code line
nnoremap <C-Down> :m .+1<CR>
nnoremap <C-Up> :m .-2<CR>
inoremap <C-Down> <Esc>:m .+1<CR>gi
inoremap <C-Up> <Esc>:m .-2<CR>gi
vnoremap <C-Down> :m '>+1<CR>gvgv
vnoremap <C-Up> :m '<-2<CR>gvgv

" Shortcuts to tab navegation
map <C-Right> :tabn<CR>
map <C-Left> :tabp<CR>
map <C-n> :tab sp<CR>

" ******************************************************************************
" SETTINGS
" ******************************************************************************

" set mousemodel=popup "exibe o conteúdo de folders e sugestões spell
syntax on   "syntax highlight
set showmatch "mostra caracteres ( { [ quando fechados
" set textwidth=100 "largura do texto
set nowrap  "sem wrap (quebra de linha)
set mouse=a "habilita todas as acoes do mouse
set nu "numeracao de linhas
set ts=4 "Seta onde o tab para
set sw=4 "largura do tab
set et "espacos em vez de tab
color delek "habilita cor
set tabstop=4 shiftwidth=4 expandtab
set ic        "ignora maiúscula e minúsculas em uma busca
" colorscheme desert

"filetype plugin indent on
set autoindent


set showmatch
set hlsearch

set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set mouse=r

set background=dark

" Define the limits to coding
hi ColorColumn cterm=NONE ctermbg=235
let &colorcolumn="80,".join(range(120,999),",")

" enable the status line, using the airline with a theme
set laststatus=2
let g:airline_theme='raven'

hi Comment ctermfg=240

set cursorline
hi CursorLine cterm=NONE ctermbg=236

" Change the search hightlight.
hi Search cterm=NONE ctermfg=white ctermbg=238

set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

